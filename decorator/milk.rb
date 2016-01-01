class Milk
  attr_reader :beverage

  def initialize(beverage)
    @beverage = beverage  
  end

  def description
    "#{beverage.description},Milk"
  end

  def cost
    0.10 + beverage.cost
  end
end