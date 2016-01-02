class Stereo
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def on
    puts "#{location} stereo is on"
  end

  def off
    puts "#{location} stereo is off"
  end

  def set_cd
    puts "#{location} stereo is set for CD input"
  end

  def set_dvd
    puts "#{location}  stereo is set for DVD input"
  end

  def set_radio
    puts "#{location} stereo is set for Radio"
  end

  def set_volume(volume)
    puts "#{location} Stereo volume set to #{volume}"
  end
end