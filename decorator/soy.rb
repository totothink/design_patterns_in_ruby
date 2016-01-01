class Soy
  attr_reader :beverage

  def initialize(beverage)
    @beverage = beverage
  end

  def description
    "#{beverage.description}, Soy"
  end

  def cost
    0.15 + beverage.cost
  end
end