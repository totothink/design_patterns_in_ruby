class NyStylePepperoniPizza < Pizza
  def initialize
    @name = "NY Style Pepperoni Pizza"
    @dough = "Thin Crust Dough"
    @sauce = "Marinara Sauce"
 
    toppings << "Grated Reggiano Cheese"
    toppings << "Sliced Pepperoni"
    toppings << "Garlic"
    toppings << "Onion"
    toppings << "Mushrooms"
    toppings << "Red Pepper"
  end
end