class ModelDuck < Duck
  def initialize
    self.fly_behavior = FlyNoWay.new
    self.quack_behavior = Quack.new
  end

  def display
    puts "I'm a model duck"
  end
end