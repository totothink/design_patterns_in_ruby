class NyPizzaStore < PizzaStore
  def create_pizza(type)
    ingredient_factory = NyPizzaIngredientFactory.new
    pizza = "#{type.camelize}Pizza".constantize.new(ingredient_factory)
    pizza.name = "New York Style #{type} Pizza"
    pizza
  end

end