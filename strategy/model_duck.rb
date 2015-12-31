class ModelDuck
  include FlyNoWay
  include Quack

  def display
    puts "I'm a model duck"
  end
end