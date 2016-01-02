class CeilingFanMediumCommand
  attr_reader :ceiling_fan

  def initialize(ceiling_fan)
    @ceiling_fan = ceiling_fan
  end

  def execute
    @pre_speed = ceiling_fan.speed
    ceiling_fan.medium
  end

  def undo
    case prev_speed
    when :high
      ceiling_fan.high
    when :medium
      ceiling_fan.medium
    when :low
      ceiling_fan.medium
    else
      ceiling_fan.off
    end
  end

  private
  def prev_speec
    @prev_speed
  end
end