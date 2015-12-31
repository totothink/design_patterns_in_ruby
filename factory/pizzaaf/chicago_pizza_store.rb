class ChicagoPizzaStore < PizzaStore
  def create_pizza(type)
    ingredient_factory = ChicagoPizzaIngredientFactory.new
    pizza = "#{type.camelize}Pizza".constantize.new(ingredient_factory)
    pizza.name = "Chicago Style #{type} Pizza"
    pizza
  end

end