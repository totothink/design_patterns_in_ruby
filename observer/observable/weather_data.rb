require "observer"

class WeatherData
  include Observable

  attr_reader :temperature, :humidity, :pressure

  def measurements_changed
    changed
    notify_observers(temperature, humidity, pressure)
  end

  def set_measurements(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    measurements_changed
  end

end