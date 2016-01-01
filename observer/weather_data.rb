class WeatherData
  attr_reader :temperature, :humidity, :pressure

  def register_observer(observer)
    observers << observer
  end

  def remove_observer(observer)
    observers.delete_if{|o| o == observer}
  end

  def notify_observers
    observers.each do |o|
      o.update(temperature, humidity, pressure)
    end
  end

  def observers
    @observers ||= []
  end

  def measurements_changed
    notify_observers
  end

  def set_measurements(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    measurements_changed
  end

end