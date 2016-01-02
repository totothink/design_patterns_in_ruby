class NoQuarterState
  attr_reader :gumball_machine

  def initialize(gumball_machine)
    @gumball_machine = gumball_machine
  end

  def insert_quarter
    puts "You inserted a quarter"
    gumball_machine.state = gumball_machine.has_quarter_state
  end

  def eject_quarter
    puts "You haven't inserted a quarter"
  end

  def turn_crank
    puts "You turned, but there's no quarter"
  end

  def dispense
    puts "You need to pay first"
  end

  def refill
    
  end

  def to_s
    "waiting for quarter"
  end
end