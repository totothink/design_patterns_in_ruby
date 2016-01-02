command CeilingFanCommand, target: ceiling_fan, attribute: :prev_speed  do
  execute do 
    @prev_speed = target.speed
  end

  undo do
    case prev_speed
    when :high
      target.high
    when :medium
      target.medium
    when :low
      target.low
    else
      target.off
    end
  end
end