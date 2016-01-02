class SoldOutState
  attr_reader :gumball_machine

  def initialize(gumball_machine)
    @gumball_machine = gumball_machine
  end

  def insert_quarter
    puts "You can't insert a quarter, the machine is sold out"
  end

  def eject_quarter
    puts "You can't eject, you haven't inserted a quarter yet"
  end

  def turn_crank
    puts "You turned, but there are no gumballs"
  end

  def dispense
    puts "No gumball dispensed"
  end

  def refill
    gumball_machine.state = gumball_machine.no_quarter_state
  end

  def to_s
    "sold out"
  end
end