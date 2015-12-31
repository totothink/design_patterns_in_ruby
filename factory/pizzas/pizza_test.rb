$:.unshift File.dirname(__FILE__)

require 'active_support/inflector'
require 'pizza'
require 'cheese_pizza'
require 'clam_pizza'
require 'pepperoni_pizza'
require 'veggie_pizza'
require 'pizza_store'

pizza_store = PizzaStore.new

pizza_store.order_pizza('clam')