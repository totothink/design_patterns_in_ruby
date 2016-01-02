require_relative 'ceiling_fan'
require_relative 'ceiling_fan_high_command'
require_relative 'ceiling_fan_medium_command'
require_relative 'ceiling_fan_off_command'
require_relative 'hottub'
require_relative 'hottub_off_command'
require_relative 'hottub_on_command'
require_relative 'light'
require_relative 'light_off_command'
require_relative 'light_on_command'
require_relative 'livingroom_light_off_command'
require_relative 'livingroom_light_on_command'
require_relative 'macro_command'
require_relative 'no_command'
require_relative 'remote_control'
require_relative 'stereo'
require_relative 'stereo_on_command'
require_relative 'stereo_off_command'
require_relative 'stereo_on_with_cd_command'
require_relative 'tv'
require_relative 'tv_on_command'
require_relative 'tv_off_command'

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