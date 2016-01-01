class ForecastDisplay
  def initialize(weather_data)
    @weather_data = weather_data
    weather_data.register_observer(self)
  end

  def update(temp, humidity, pressure)
    @last_pressure = current_pressure
    @current_pressure = pressure
    display
  end

  def display
    puts "Forecast: "
    if current_pressure > last_pressure
      puts "Improving weather on the way!"
    elsif current_pressure == last_pressure
      puts "More of the same"
    else
      puts "Watch out for cooler, rainy weather"
    end
  end

  def current_pressure
    @current_pressure ||= 29.2
  end

  def last_pressure
    @last_pressure 
  end
end