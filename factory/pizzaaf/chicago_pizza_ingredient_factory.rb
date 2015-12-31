class ChicagoPizzaIngredientFactory
  def create_dough
    ThickCrustDough.new
  end

  def create_sauce
    PlumTomatoSauce.new
  end

  def create_cheese
    MozzarellaCheese.new
  end

  def create_veggies
    [BlackOlives.new, Spinach.new, Eggplant.new]
  end

  def create_pepperoni
    SlicedPepperoni.new
  end

  def create_clam
    FrozenClams.new
  end
end