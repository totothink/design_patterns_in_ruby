class SoldState
  attr_reader :gumball_machine

  def initialize(gumball_machine)
    @gumball_machine = gumball_machine
  end

  def insert_quarter
    puts "Please wait, we're already giving you a gumball"
  end

  def eject_quarter
    puts "Sorry, you already turned the crank"
  end

  def turn_crank
    puts "Turning twice doesn't get you another gumball!"
  end

  def dispense
    gumball_machine.release_ball
    if gumball_machine.count > 0
      gumball_machine.state = gumball_machine.no_quarter_state
    else
      puts "Oops, out of gumballs!"
      gumball_machine.state = gumball_machine.sold_out_state
    end
  end

  def refill
    
  end

  def to_s
    "dispensing a gumball"
  end
end