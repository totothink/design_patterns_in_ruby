class LightOffCommand
  attr_reader :light

  def initialize(light)
    @light = light
  end

  def execute
    light.off
  end

  def undo
    light.on
  end
end