require 'string_repeater'

RSpec.describe StringRepeater do
  it "takes a string and number and repeats the string that many times" do
    fake_io = double :fake_io
    expect(fake_io).to receive(:puts).with('Hello. I will repeat a string many times.').ordered
    expect(fake_io).to receive(:puts).with('Please enter a string').ordered
    expect(fake_io).to receive(:gets).and_return('hello')
    expect(fake_io).to receive(:puts).with('Please enter a number of repeats').ordered
    expect(fake_io).to receive(:gets).and_return('5')
    expect(fake_io).to receive(:puts).with('Here is your result:').ordered
    expect(fake_io).to receive(:puts).with('hellohellohellohellohello').ordered

    string_repeater = StringRepeater.new(fake_io)
    string_repeater.run
  end
end