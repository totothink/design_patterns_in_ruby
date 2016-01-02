class HottubOnCommand
  attr_reader :hottub

  def initialize(hottub)
    @hottub = hottub
  end

  def execute
    hottub.on
    hottub.temperature = 104
    hottub.circulate
  end

  def undo
    hottub.off
  end  
end