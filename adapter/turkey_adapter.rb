class TurkeyAdapter
  def initialize(turkey)
    @turkey = turkey
  end

  def quack
    turkey.gobble
  end

  def fly
    5.times do 
      turkey.fly
    end
  end

  private
  def turkey
    @turkey
  end
end