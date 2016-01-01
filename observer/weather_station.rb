require_relative 'current_condition_display'
require_relative 'forecast_display'
require_relative 'heat_index_display'
require_relative 'statistics_display'
require_relative 'weather_data'

weather_data = WeatherData.new
current_condition_display = CurrentConditionDisplay.new(weather_data)
statistics_display = StatisticsDisplay.new(weather_data)
forecast_display = ForecastDisplay.new(weather_data)

weather_data.set_measurements(80,65,30.4)
weather_data.set_measurements(82,70,29.2)
weather_data.set_measurements(78,90,29.2)