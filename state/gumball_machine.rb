class GumballMachine
  attr_reader :sold_out_state, :no_quarter_state, :has_quarter_state, :sold_state, :state, :count

  def initialize(number_gumballs)
    @sold_out_state = SoldOutState.new(self)
    @no_quarter_state =  NoQuarterState.new(self)
    @has_quarter_state = HasQuarterState.new(self)
    @sold_state = SoldState.new(self)
    @count = number_gumballs
    @state = if number_gumballs > 0
      no_quarter_state
    else
      sold_out_state
    end
  end

  def insert_quarter
    state.insert_quarter
  end

  def eject_quarter
    state.eject_quarter
  end

  def turn_crank
    state.turn_crank
    state.dispense
  end

  def release_ball
    puts "A gumball comes rolling out the slot..."
    if count != 0
      @count = count - 1
    end
  end

  def refill(inc)
    @count = count + inc
    puts "The gumball machine was just refilled; it's new count is: #{count}"
    state.refill
  end

  def state=(state)
    @state = state
  end

  def to_s
    result = "\nMighty Gumball, Inc."
    result << "\nJava-enabled Standing Gumball Model #2004"
    result << "\nInventory: #{count} gumball"
    if count != 1
      result << "s"
    end
    result << "\n"
    result << "Machine is #{state} \n"
  end

end
