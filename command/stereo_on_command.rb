class StereoOnCommand
  attr_reader :stereo

  def initialize(stereo)
    @stereo = stereo
  end

  def execute
    stereo.on
  end

  def undo
    stereo.off
  end
end