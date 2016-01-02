require_relative 'chocolate_boiler'

boiler = ChocolateBoiler.instance
boiler.fill
boiler.boil
boiler.drain

boiler2 = ChocolateBoiler.instance