class VeggiePizza < Pizza
  def initialize
    @name = "Veggie Pizza"
    @dough = "Crust"
    @sauce = "Marinara sauce"
    toppings << "Shredded mozzarella"
    toppings << "Grated parmesan"
    toppings << "Diced onion"
    toppings << "Sliced mushrooms"
    toppings << "Sliced red pepper"
    toppings << "Sliced black olives"
  end
end