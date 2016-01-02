class TvOnCommand
  attr_reader :tv

  def initialize(tv)
    @tv = tv
  end

  def execute
    tv.on
    tv.set_input_channel
  end

  def undo
    tv.off
  end
end