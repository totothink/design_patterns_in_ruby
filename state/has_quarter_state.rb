class HasQuarterState
  attr_reader :gumball_machine

  def initialize(gumball_machine)
    @gumball_machine = gumball_machine
  end

  def insert_quarter
    puts "You can't insert another quarter"
  end

  def eject_quarter
    puts "Quarter returned"
    gumball_machine.state = gumball_machine.no_quarter_state
  end

  def turn_crank
    puts "You turned..."
    gumball_machine.state = gumball_machine.sold_state
  end

  def dispense
    puts "No gumball dispensed"
  end

  def refill
    
  end

  def to_s
    "waiting for turn of crank"
  end
end