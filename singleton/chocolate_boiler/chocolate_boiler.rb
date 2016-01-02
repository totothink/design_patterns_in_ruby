class ChocolateBoiler
  attr_reader :empty, :boiled

  class << self
    def instance
      if @instance == nil
        puts "Create unique instance of Chocolate Boiler"
        @instance = ChocolateBoiler.new
      end
      puts "Returning instance of ChocolateBoiler"
      @instance
    end
  end

  def fill
    if empty
      @empty = false
      @boiled = false
    end
  end

  def drain
    if !empty && boiled
      @empty = true
    end
  end

  def boil
    if !empty && !boiled
      @boiled = true
    end
  end
end