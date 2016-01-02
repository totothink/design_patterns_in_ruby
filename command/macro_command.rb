class MacroCommand
  attr_reader :commands

  def initialize(commands)
    @commands = commands
  end

  def execute
    commands.each do |command|
      command.execute
    end
  end

  def undo
    commands.reverse_each do |command|
      command.undo
    end
  end
end