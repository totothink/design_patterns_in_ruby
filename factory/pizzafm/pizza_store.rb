class PizzaStore
  attr_reader :style

  def initialize(style=nil)
    @style = style
  end

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
    "#{style.camelize}#{pizza_type.camelize}Pizza".constantize.new
  end
end