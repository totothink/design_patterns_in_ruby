class PizzaStore
  attr_reader :logo

  def initialize(opts)
    @logo = opts[:logo]
    @ingredient_factory = opts[:ingredient_factory]
  end

  def order_pizza(type)
    pizza = create_pizza(type)
    puts "--- Making a #{pizza.name} ---"
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    pizza
  end

  private
  def create_pizza(type)
    pizza = "#{type.camelize}Pizza".constantize.new(ingredient_factory)
    pizza.name = "#{logo} #{type.camelize} Pizza"
    pizza
  end

  def ingredient_factory
    @ingredient_factory
  end
end