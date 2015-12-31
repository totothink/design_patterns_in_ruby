class CheesePizza < Pizza
  attr_reader :factory

  def initialize(factory)
    @factory = factory
  end

  def prepare
    puts "Preparing #{name}"
    @dough = factory.create_dough
    @sauce = factory.create_sauce
    @cheese = factory.create_cheese
  end
end