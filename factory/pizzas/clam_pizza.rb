class ClamPizza < Pizza
  def initialize
    @name = 'Clam Pizza'
    @dough = 'Thin crust'
    @sauce = 'White gralic sauce'
    toppings << "Clams"
    toppings << "Grated parmesan cheese"
  end
end