class Screen
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def up
    puts "#{description} going up"
  end

  def down
    puts "#{description} going down"
  end

  def to_s
    description
  end
end