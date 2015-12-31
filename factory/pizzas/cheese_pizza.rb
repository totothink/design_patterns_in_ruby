class CheesePizza < Pizza
  def initialize
    @name = "Cheese Pizza"
    @dough = "Regular Crust"
    @sauce = "Marinara Pizza Sauce"
    toppings << "Fresh Mozzarella"
    toppings << "Parmesan"
  end
end