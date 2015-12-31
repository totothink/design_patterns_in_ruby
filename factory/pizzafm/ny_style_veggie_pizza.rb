class NyStyleVeggiePizza < Pizza
  def initialize
    @name = "NY Style Veggie Pizza"
    @dough = "Thin Crust Dough"
    @sauce = "Marinara Sauce"
 
    toppings << "Grated Reggiano Cheese"
    toppings << "Garlic"
    toppings << "Onion"
    toppings << "Mushrooms"
    toppings << "Red Pepper"   
  end
end