require_relative 'duck'
require_relative 'decoy_duck'
require_relative 'fake_quack'
require_relative 'fly_no_way'
require_relative 'fly_rocket_powered'
require_relative 'fly_with_wings'
require_relative 'mallard_duck'
require_relative 'model_duck'
require_relative 'mute_quack'
require_relative 'quack'
require_relative 'red_head_duck'
require_relative 'rubber_duck'
require_relative 'squeak'

mallard = MallardDuck.new
rubber_duckie = RubberDuck.new
decoy = DecoyDuck.new
model = ModelDuck.new

mallard.perform_quack
rubber_duckie.perform_quack
decoy.perform_quack

model.perform_fly
model.fly_behavior = FlyRocketPowered.new
model.perform_fly