require_relative 'duck_adapter'
require_relative 'mallard_duck'
require_relative 'turkey_adapter'
require_relative 'wild_turkey'

def test_duck(duck)
  duck.quack
  duck.fly
end

duck = MallardDuck.new
turkey = WildTurkey.new

turkey_adapter = TurkeyAdapter.new(turkey)

puts "The Turkey says..."

turkey.gobble
turkey.fly

puts "\nThe Duck says..."
test_duck(duck)

puts "\nThe TurkeyAdapter says..."
test_duck(turkey_adapter)