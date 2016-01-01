class Mocha
  attr_reader :beverage

  def initialize(beverage)
    @beverage = beverage
  end

  def description
    "#{beverage.description}, Mocha"
  end

  def cost
    0.20 + beverage.cost
  end
end