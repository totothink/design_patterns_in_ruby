# 问题： 在定义command的过程中有很多的重复代码，这些重复代码严重降低了代码的编写效率，增加了代码的维护成本。
# 解题思路：
#  1. 定义一套DSL语言，允许程序员通过配置的方式来定义Command
#  2. Command之间可继承，减少需要配置的代码
#
# 解决方案:
#  1. DSL语言
#    1.1 command
#      command用来定义一个命令
#    1.2 execute
#      execute用来定义命令需要执行的操作
#    1.3 undo
#      undo用来定义命令撤销时需要执行的操作
#    1.4 target
#      target用来保存目标对象，命令的具体动作应该由目标对象完成
#    1.5 attributes
#      attributes用来声明命令中可以使用的属性
#
#  2. 示例
# command :CeilingFanCommand, target: ceiling_fan, attributes: [:prev_speed]  do
#   execute do
#     prev_speed = target.speed
#   end

#   undo do
#     case prev_speed
#     when :high
#       target.high
#     when :medium
#       target.medium
#     when :low
#       target.low
#     else
#       target.off
#     end
#   end
# end
require 'active_support/inflector'
module CommandDSL
  module InsideDSL
    def execute(&block)
      define_method :execute, &block
    end

    def undo(&block)
      define_method :undo, &block
    end
  end

  def command(class_name, attributes: [], inherited: :Object, &block)
    klass = Class.new(inherited.to_s.constantize) do
      extend InsideDSL
      attr_reader :target

      def initialize(target = nil)
        @target = target
      end

      attributes.each do |attribute|
        attr_accessor attribute
      end

      def execute
        # 没有动作
      end

      def undo
        # 没有动作
      end
    end
    klass.instance_eval &block if block
    eval "::#{class_name}=klass"
  end
end

require_relative 'ceiling_fan'
require_relative 'hottub'
require_relative 'light'
require_relative 'stereo'
require_relative 'tv'
include CommandDSL

# 定义command
command :CielingFanBaseCommand, attributes: [:prev_speed] do
  execute do
    prev_speed = target.prev_speed
  end

  undo do
    case prev_speed
    when :high
      target.high
    when :medium
      target.medium
    when :low
      target.medium
    else
      target.off
    end
  end
end

command :CielingFanHighCommand, inherited: :CielingFanBaseCommand do
  execute do
    super
    target.high
  end
end

command :CielingFanMediumCommand, inherited: :CielingFanBaseCommand do
  execute do
    super
    target.medium
  end
end

command :CielingFanOffCommand, inherited: :CielingFanBaseCommand do
  execute do
    super
    target.off
  end
end

command :HottubOffCommand do
  execute do
    target.temperature = 98
    target.off
  end

  undo do
    target.on
  end
end

command :HottubOnCommand do
  execute do
    target.on
    target.temperature = 104
    target.circulate
  end

  undo do
    target.off
  end
end

command :LightOnCommand do
  execute do
    target.on
  end

  undo do
    target.off
  end
end

command :LightOffCommand do
  execute do
    target.off
  end

  undo do
    target.on
  end
end

LivingroomLightOffCommand = LightOffCommand.clone
LivingroomLightOnCommand = LightOnCommand.clone

command :MacroCommand do
  execute do
    target.each do |cmd|
      cmd.execute
    end
  end

  undo do
    target.reverse_each { |cmd| command.undo }
  end
end

command :NoCommand

command :StereoOffCommand do
  execute { target.off }
  undo { target.on }
end

command :StereoOnCommand do
  execute { target.on }
  execute { target.off }
end

command :StereoOnWithCdCommand do
  execute do
    target.on
    target.set_cd
    target.set_volume(11)
  end

  undo do
    target.off
  end
end

command :TvOffCommand do
  execute { target.off }
  undo { target.on }
end

command :TvOnCommand do
  execute {target.on}
  undo {target.off}
end

# 使用遥控器
require_relative 'remote_control'

remote_control = RemoteControl.new

light = Light.new("Living Room")
tv = Tv.new("Living Room")
stereo = Stereo.new("Living Room")
hottub = Hottub.new

light_on = LightOnCommand.new(light)
stereo_on = StereoOnCommand.new(stereo)
tv_on = TvOnCommand.new(tv)
hottub_on = HottubOnCommand.new(hottub)

light_off = LightOffCommand.new(light)
stereo_off = StereoOffCommand.new(stereo)
tv_off = TvOffCommand.new(tv)
hottub_off = HottubOffCommand.new(hottub)

party_on = [light_on, stereo_on, tv_on, hottub_on]
party_off = [light_off, stereo_off, tv_off, hottub_off]

party_on_macro = MacroCommand.new(party_on)
party_off_macro = MacroCommand.new(party_off)

remote_control.set_command(0, party_on_macro, party_off_macro)

puts remote_control
puts "--- Pushing Macro On---"
remote_control.on_button_was_pushed(0)
puts "--- Pushing Macro Off---"
remote_control.off_button_was_pushed(0)