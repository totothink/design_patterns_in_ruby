require_relative 'fake_quack'
require_relative 'mute_quack'
require_relative 'quack'
require_relative 'squeak'
require_relative 'fly_no_way'
require_relative 'fly_rocket_powered'
require_relative 'fly_with_wings'

require_relative 'decoy_duck'
require_relative 'mallard_duck'
require_relative 'model_duck'
require_relative 'red_head_duck'
require_relative 'rubber_duck'


mallard = MallardDuck.new
rubber_duckie = RubberDuck.new
decoy = DecoyDuck.new
model = ModelDuck.new

mallard.quack
rubber_duckie.quack
decoy.quack
model.quack

mallard.fly
rubber_duckie.fly
decoy.fly
model.fly