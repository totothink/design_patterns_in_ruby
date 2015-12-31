class VeggiePizza < Pizza

  def prepare
    super
    @cheese = ingredient_factory.create_cheese
    @veggies = ingredient_factory.create_veggies
  end
end