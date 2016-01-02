class Tuner
  attr_reader :description
  attr_accessor :frequency

  def initialize(description, amplifier)
    @description = description
    @amplifier = amplifier
  end

  def on
    puts "#{description} on"
  end

  def off
    puts "#{description} off"
  end

  def set_am
    puts "#{description} setting AM"
  end

  def set_fm
    puts "#{description} setting FM"
  end

  def to_s
    description
  end  
end