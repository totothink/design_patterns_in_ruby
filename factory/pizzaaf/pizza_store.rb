class PizzaStore
  def order_pizza(type)
    pizza = create_pizza(type)
    puts "--- Making a #{pizza.name} ---"
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    pizza
  end
end