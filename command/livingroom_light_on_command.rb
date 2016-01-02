class LivingroomLightOnCommand
  attr_reader :light

  def initialize(light)
    @light = light
  end

  def execute
    light.on
  end

  def undo
    light.off
  end
end