class StatisticsDisplay

  def initialize(weather_data)
    @weather_data = weather_data
    weather_data.add_observer(self)
  end

  def update(temp, humidity, pressure)
    @temp_sum = temp_sum + temp
    @num_readings = num_readings + 1

    @max_temp = temp if temp > max_temp
    @min_temp = temp if temp < min_temp

    display
  end

  def display
    puts "Avg/Max/Min temperature = #{temp_sum / num_readings} / #{max_temp} / #{min_temp}"
  end

  private
  def max_temp
    @max_temp ||= 0.0
  end

  def min_temp
    @min_temp ||= 200
  end

  def temp_sum
    @temp_sum ||= 0.0
  end

  def num_readings
    @num_readings ||= 0
  end


end