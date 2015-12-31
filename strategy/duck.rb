class Duck
  attr_accessor :fly_behavior, :quack_behavior

  def perform_fly
    fly_behavior.fly
  end

  def perform_quack
    quack_behavior.quack
  end

  def swim
    puts "All ducks float, even decoys!"
  end

end