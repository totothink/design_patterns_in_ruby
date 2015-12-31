class CheesePizza < Pizza

  def prepare
    super
    @cheese = ingredient_factory.create_cheese
  end
end