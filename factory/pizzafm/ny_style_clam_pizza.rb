class NyStyleClamPizza < Pizza
  def initialize
    @name = "NY Style Clam Pizza"
    @dough = "Thin Crust Dough"
    @sauce = "Marinara Sauce"
 
    toppings << "Grated Reggiano Cheese"
    toppings << "Fresh Clams from Long Island Sound"
  end
end