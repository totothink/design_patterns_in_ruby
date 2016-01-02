class StereoOffCommand
  attr_reader :stereo

  def initialize(stereo)
    @stereo = stereo
  end

  def execute
    stereo.off
  end

  def undo
    stereo.on
  end
end