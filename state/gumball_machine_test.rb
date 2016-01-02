require_relative 'has_quarter_state'
require_relative 'no_quarter_state'
require_relative 'sold_out_state'
require_relative 'sold_state'
require_relative 'gumball_machine'
require 'pry'

gumball_machine = GumballMachine.new(2)

puts gumball_machine

gumball_machine.insert_quarter
gumball_machine.turn_crank

puts gumball_machine

gumball_machine.insert_quarter
gumball_machine.turn_crank
gumball_machine.insert_quarter
gumball_machine.turn_crank

gumball_machine.refill(5)
gumball_machine.insert_quarter
gumball_machine.turn_crank

puts gumball_machine
