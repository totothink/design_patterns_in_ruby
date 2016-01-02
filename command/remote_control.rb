class RemoteControl
  attr_reader :on_commands, :off_commands, :undo_command

  def initialize
    @on_commands = []
    @off_commands = []
    no_command = NoCommand.new
    @button_count = 7

    @button_count.times do |i|
      on_commands[i] = no_command
      off_commands[i] = no_command
    end

    undo_command = no_command
  end

  def set_command(slot, on_command, off_command)
    on_commands[slot] = on_command
    off_commands[slot] = off_command
  end

  def on_button_was_pushed(slot)
    on_commands[slot].execute
    undo_command = on_commands[slot]
  end

  def off_button_was_pushed(slot)
    off_commands[slot].execute
    undo_command = off_commands[slot]
  end

  def to_s
    result = "\n------ Remote Control -------\n" 
    on_commands.each_with_index do |command, i|
      result  << "[slot #{i}] #{command.class.name}  #{off_commands[i].class.name}"
    end
    result << "[undo] #{undo_command.class.name}"
    result
  end
end