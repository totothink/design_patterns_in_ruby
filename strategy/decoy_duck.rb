class DecoyDuck < Duck
  def initialize
    self.fly_behavior = FlyNoWay.new
    self.quack_behavior = MuteQuack.new
  end

  def display
    puts "I'm a duck Decoy"
  end
end