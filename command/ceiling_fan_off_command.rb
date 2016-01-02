class CeilingFanOffCommand
  attr_reader :ceiling_fan

  def initialize(ceiling_fan)
    @ceiling_fan = ceiling_fan
  end

  def execute
    @prev_speed = ceiling_fan.speed
    ceiling_fan.off
  end

  def undo
    case prev_speed
    when :high
      ceiling_fan.high
    when :medium
      ceiling_fan.medium
    when :low
      ceiling_fan.medium
    else
      ceiling_fan.off
    end
  end

  private
  def prev_speec
    @prev_speed
  end  
end