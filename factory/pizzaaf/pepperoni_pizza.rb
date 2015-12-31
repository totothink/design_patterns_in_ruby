class PepperoniPizza < Pizza
  
  def prepare
    super
    @cheese = ingredient_factory.create_cheese
    @veggies = ingredient_factory.create_veggies
    @pepperoni = ingredient_factory.create_pepperoni
  end
end