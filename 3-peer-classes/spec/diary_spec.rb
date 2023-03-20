require "diary"

RSpec.describe Diary do
  it "initializes" do
    diary = Diary.new("My secret stuff")
    expect(diary.read).to eq "My secret stuff"
  end
end