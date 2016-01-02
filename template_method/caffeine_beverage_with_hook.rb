class CaffeineBeverage
  def prepare_recipe
    boil_water
    brew
    pour_in_cup
    if customer_wants_condiments
      add_condiments
    end
  end

  def brew
    
  end

  def add_condiments
    
  end

  def boil_water
    puts "Boiling water"
  end

  def pour_in_cup
    puts "Pouring into cup"
  end

  def customer_wants_condiments
    true
  end
end