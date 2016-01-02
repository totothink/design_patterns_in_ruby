class Hottub
  attr_reader :on, :temperature

  def on
    @on = true
  end

  def off
    @on = false
  end

  def circulate
    on && puts("Hottub is bubbling!")
  end

  def jets_on
    on && puts("Hottub jets are on")
  end

  def jets_off
    on && puts("Hottub jets are off")
  end

  def temperature=(value)
    if temperature  && (value > temperature)
      puts "Hottub is heating to a steaming #{temperature} degrees"
    else
      puts "Hottub is cooling to #{temperature} degrees"
    end
    @temperature = value
  end
end