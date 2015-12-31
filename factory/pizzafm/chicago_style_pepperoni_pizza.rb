class ChicagoStylePepperoniPizza < Pizza
  def initialize
    @name = "Chicago Style Pepperoni Pizza"
    @dough = "Extra Thick Crust Dough"
    @sauce = "Plum Tomato Sauce"
 
    toppings << "Shredded Mozzarella Cheese"
    toppings << "Black Olives"
    toppings << "Spinach"
    toppings << "Eggplant"
    toppings << "Sliced Pepperoni"
  end

  def cut
    puts "Cutting the pizza into square slices"
  end
end