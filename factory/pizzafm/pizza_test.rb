$:.unshift File.dirname(__FILE__)

require 'active_support/inflector'
require 'pizza'
require 'chicago_style_cheese_pizza'
require 'chicago_style_clam_pizza'
require 'chicago_style_pepperoni_pizza'
require 'chicago_style_veggie_pizza'
require 'ny_style_cheese_pizza'
require 'ny_style_clam_pizza'
require 'ny_style_pepperoni_pizza'
require 'ny_style_veggie_pizza'
require 'pizza_store'
require 'chicago_pizza_store'
require 'ny_pizza_store'

# 按照Head First方式编写
ny_store = NyPizzaStore.new
chicago_store = ChicagoPizzaStore.new

ny_store.order_pizza('cheese')

chicago_store.order_pizza('cheese')


# Ruby实现的方式中可以不需要NYPizzaStore和ChicagoPizzaStore

ny_store = PizzaStore.new('ny_style')
ny_store.order_pizza('clam')

chicago_store = PizzaStore.new('chicago_style')
chicago_store.order_pizza('clam')
