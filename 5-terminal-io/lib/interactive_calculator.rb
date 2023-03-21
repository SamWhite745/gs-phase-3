class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts 'Hello. I will subtract two numbers.'
    @terminal.puts 'Please enter a number.'
    first_num = @terminal.gets.chomp
    @terminal.puts 'Please enter another number.'
    second_num = @terminal.gets.chomp
    @terminal.puts 'Here is your result:'
    @terminal.puts "#{first_num} - #{second_num} = #{first_num.to_i - second_num.to_i}"
  end
end

# calc = InteractiveCalculator.new(Kernel)
# calc.run