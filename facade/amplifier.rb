class Amplifier
  attr_reader :description
  attr_accessor :stereo_sound, :surround_sound, :volume, :tuner, :dvd, :cd

  def initialize(description)
    @description = description
  end

  def on
    puts "#{description} on"
  end

  def off
    puts "#{description} off"
  end

  def set_surround_sound
    puts "#{description}  surround sound on (5 speakers, 1 subwoofer)"
  end

  def set_stereo_sound
    puts "#{description} stereo mode on"
  end

  def to_s
    description
  end

end