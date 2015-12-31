class PizzaStore
  def order_pizza(pizza_type)
    pizza = create_pizza(pizza_type)
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    pizza
  end

  private
  def create_pizza(pizza_type)
    "#{pizza_type.capitalize}Pizza".constantize.new
  end
end