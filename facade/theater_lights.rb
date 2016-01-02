class TheaterLights
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def on
    puts "#{description} on"
  end

  def off
    puts "#{description} off"
  end

  def dim(level)
    puts "#{description} dimming to #{level}"
  end

  def to_s
    description
  end  
end