class RubberDuck < Duck
  def initialize
    self.fly_behavior = FlyNoWay.new
    self.quack_behavior = Squeak.new
  end

  def display
    puts "I'm a rubber duckie"
  end
end