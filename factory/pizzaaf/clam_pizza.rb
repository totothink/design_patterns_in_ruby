class ClamPizza < Pizza
  def prepare
    super
    @cheese = ingredient_factory.create_cheese
    @clam = ingredient_factory.create_clam
  end
end