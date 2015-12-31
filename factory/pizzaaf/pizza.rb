class Pizza
  attr_accessor :name
  attr_reader :dough, :sauce, :veggies, :cheese, :pepperoni, :clam

  def prepare
    
  end

  def bake
    puts "Bake for 25 minutes at 350"
  end

  def cut
    puts "Cutting the pizza into diagonal slices"
  end

  def box
    puts "Place pizza in official PizzaStore box"
  end

  def veggies
    @veggies ||= []
  end

  def to_s
    result = "--- #{name} ----\n"
    result << "#{dough}\n" if dough
    result << "#{sauce}\n" if sauce
    result << "#{cheese}\n" if cheese
    result << veggies.join("\n") if veggies.any?
    result << "#{clam}\n" if clam
    result << "#{pepperoni}\n" if pepperoni
    result
  end
end