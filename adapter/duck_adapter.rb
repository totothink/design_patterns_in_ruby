class DuckAdapter
  def initialize(duck)
    @duck = duck
  end

  def gobble
    duck.quack
  end

  def fly
    if 5.rand == 0
      duck.fly
    end
  end

  private
  def duck
    @duck
  end
end