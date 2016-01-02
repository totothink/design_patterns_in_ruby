class CeilingFan
  attr_reader :speed, :location

  def initialize(location)
    @location = location
    @stats = [:off, :low, :medium,  :high]
  end

  def high
    @speed = :high
  end

  def medium
    @speed = :medium
  end

  def low
    @speed = :low
  end

  def off
    @speed = :off
  end

end