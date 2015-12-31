class Pizza
  attr_reader :name, :dough, :sauce

  def prepare
    puts "prepare #{name}"
  end

  def bake
    puts "bake #{name}"
  end

  def cut
    puts "cut #{name}"
  end

  def box
    puts "box #{name}"
  end

  def toppings
    @toppings ||= []
  end

end