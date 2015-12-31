$:.unshift File.dirname(__FILE__)

require 'active_support/inflector'
require 'pizza'
require 'pizza_store'
require 'black_olives'
require 'cheese_pizza'
require 'chicago_pizza_ingredient_factory'
require 'chicago_pizza_store'
require 'clam_pizza'
require 'eggplant'
require 'fresh_clams'
require 'frozen_clams'
require 'garlic'
require 'marinara_sauce'
require 'mozzarella_cheese'
require 'mushroom'
require 'ny_pizza_ingredient_factory'
require 'ny_pizza_store'
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

ny_store = NyPizzaStore.new

chicago_store = ChicagoPizzaStore.new

pizza = ny_store.order_pizza("cheese")

puts "Ethan ordered a #{pizza} \n"

pizza = chicago_store.order_pizza("cheese")

puts "Joel ordered a #{pizza} \n"

