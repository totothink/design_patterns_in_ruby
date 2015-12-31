class ChicagoStyleClamPizza < Pizza
  def initialize
    @name = "Chicago Style Clam Pizza"
    @dough = "Extra Thick Crust Dough"
    @sauce = "Plum Tomato Sauce"
 
    toppings << "Shredded Mozzarella Cheese"
    toppings << "Frozen Clams from Chesapeake Bay"
  end

  def cut
    puts "Cutting the pizza into square slices"
  end
end