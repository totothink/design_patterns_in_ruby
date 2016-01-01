class CurrentConditionDisplay
  attr_reader :temperature, :humidity

  def initialize(weather_data)
    @weather_data = weather_data
    weather_data.add_observer(self)
  end

  def update(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    display
  end

  def display
    puts "Current conditions : #{temperature} F degrees and #{humidity}% humidity"
  end
end