class Projector
  attr_reader :description, :dvd_player

  def initialize(description, dvd_player)
    @description = description
    @dvd_player = dvd_player
  end

  def on
    puts "#{description} on"
  end

  def off
    puts "#{description} off"
  end

  def wide_screen_mode
    puts "#{description} in wide screen mode"
  end

  def tv_mode
    puts "#{description} in tv mode"
  end

  def to_s
    description
  end
end