class RedHeadDuck < Duck
  def initialize
    self.fly_behavior = FlyWithWings.new
    self.quack_behavior = Quack.new
  end

  def display
    puts "I'm a real Red Headed duck"
  end
end