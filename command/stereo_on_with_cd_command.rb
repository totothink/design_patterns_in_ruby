class StereoOnWithCdCommand
  attr_reader :stereo

  def initialize(stereo)
    @stereo = stereo
  end

  def execute
    stereo.on
    stereo.set_cd
    stereo.set_volume(11)
  end

  def undo
    stereo.off
  end
end