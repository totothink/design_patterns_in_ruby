class HottubOffCommand
  attr_reader :hottub

  def initialize(hottub)
    @hottub = hottub
  end

  def execute
    hottub.temperature = 98
    hottub.off
  end

  def undo
    hottub.on
  end
end