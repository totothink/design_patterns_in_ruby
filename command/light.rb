class Light
  attr_reader :location, :level

  def initialize(location)
    @location = location
  end

  def on
    level = 100
    puts "Light is on"
  end

  def off
    level = 0
    puts "Light is off"
  end

  def dim(level)
    @level = level
    if level == 0
      off
    else
      puts "Light is dimmed to #{level}"
    end
  end
end