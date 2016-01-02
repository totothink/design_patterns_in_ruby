class Tv
  attr_reader :location, :channel

  def initialize(location)
    @location = location
  end

  def on
    puts "#{location} TV is on"
  end

  def off
    puts "#{location} TV is off"
  end

  def set_input_channel
    @channel = 3
    puts "#{location} TV channel is set for DVD"
  end
end