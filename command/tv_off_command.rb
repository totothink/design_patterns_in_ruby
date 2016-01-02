class TvOffCommand
  attr_reader :tv

  def initialize(tv)
    @tv = tv
  end

  def execute
    tv.off
  end

  def undo
    tv.on
  end
end