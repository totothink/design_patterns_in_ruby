require_relative 'caffeine_beverage_with_hook'
require_relative 'coffee'
require_relative 'tea'

tea = Tea.new
coffee = Coffee.new

puts "Making tea..."
tea.prepare_recipe

puts "Making coffee..."
coffee.prepare_recipe
