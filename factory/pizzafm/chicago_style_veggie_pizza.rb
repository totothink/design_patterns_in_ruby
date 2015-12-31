class ChicagoStyleVeggiePizza < Pizza
  def initialize
    @name = "Chicago Deep Dish Veggie Pizza"
    @dough = "Extra Thick Crust Dough"
    @sauce = "Plum Tomato Sauce"
 
    toppings << "Shredded Mozzarella Cheese"
    toppings << "Black Olives"
    toppings << "Spinach"
    toppings << "Eggplant"
  end

  def cut
    puts "Cutting the pizza into square slices"
  end
end