require_relative 'dark_roast'
require_relative 'decaf'
require_relative 'espresso'
require_relative 'house_blend'
require_relative 'milk'
require_relative 'mocha'
require_relative 'soy'
require_relative 'whip'

beverage = Espresso.new

puts "#{beverage.description} $#{beverage.cost}"

beverage2 = DarkRoast.new
beverage2 = Mocha.new(beverage2)
beverage2 = Mocha.new(beverage2)
beverage2 = Whip.new(beverage2)

puts "#{beverage2.description} $#{beverage2.cost}"

beverage3 = HouseBlend.new
beverage3 = Soy.new(beverage3)
beverage3 = Mocha.new(beverage3)
beverage3 = Whip.new(beverage3)

puts "#{beverage3.description} $#{beverage3.cost}"