$:.unshift File.dirname(__FILE__)

require 'active_support/inflector'
require 'pizza'
require 'pizza_store'
require 'black_olives'
require 'cheese_pizza'
require 'chicago_pizza_ingredient_factory'
require 'clam_pizza'
require 'eggplant'
require 'fresh_clams'
require 'frozen_clams'
require 'garlic'
require 'marinara_sauce'
require 'mozzarella_cheese'
require 'mushroom'
require 'ny_pizza_ingredient_factory'
require 'onion'
require 'parmesan_cheese'
require 'pepperoni_pizza'

require 'plum_tomato_sauce'
require 'red_pepper'
require 'reggiano_cheese'
require 'sliced_pepperoni'
require 'spinach'
require 'thick_crust_dough'
require 'thin_crust_dough'
require 'veggie_pizza'

ny_pizza_ingredient_factory = NyPizzaIngredientFactory.new
chicago_pizza_ingredient_factory = ChicagoPizzaIngredientFactory.new

ny_store = PizzaStore.new(logo: 'New York Style', ingredient_factory: ny_pizza_ingredient_factory)
chicago_store = PizzaStore.new(logo: 'Chicago Style', ingredient_factory: chicago_pizza_ingredient_factory)

san_francisco_store = PizzaStore.new(logo: 'San Francisco', ingredient_factory: chicago_pizza_ingredient_factory)

pizza = ny_store.order_pizza("cheese")

puts "Ethan ordered a #{pizza} \n"

pizza = chicago_store.order_pizza("cheese")

puts "Joel ordered a #{pizza} \n"

pizza = san_francisco_store.order_pizza("veggie")

puts "Aaron ordered a #{pizza} \n"