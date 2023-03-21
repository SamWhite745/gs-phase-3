class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts 'Hello. I will repeat a string many times.'
    @terminal.puts 'Please enter a string'
    string_to_repeat = @terminal.gets.chomp
    @terminal.puts 'Please enter a number of repeats'
    times_to_repeat = @terminal.gets.chomp
    @terminal.puts 'Here is your result:'
    @terminal.puts "#{string_to_repeat*times_to_repeat.to_i}"
  end
end

# stringrepeater = StringRepeater.new(Kernel)
# stringrepeater.run