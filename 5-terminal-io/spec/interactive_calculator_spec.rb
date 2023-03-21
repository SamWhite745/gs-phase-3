require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "gets some user input and subtracts them" do
    fake_io = double :fake_io
    expect(fake_io).to receive(:puts).with('Hello. I will subtract two numbers.').ordered
    expect(fake_io).to receive(:puts).with('Please enter a number.').ordered
    expect(fake_io).to receive(:gets).and_return('10').ordered
    expect(fake_io).to receive(:puts).with('Please enter another number.').ordered
    expect(fake_io).to receive(:gets).and_return('4').ordered
    expect(fake_io).to receive(:puts).with('Here is your result:').ordered
    expect(fake_io).to receive(:puts).with('10 - 4 = 6').ordered

    calc = InteractiveCalculator.new(fake_io)
    calc.run
  end
end