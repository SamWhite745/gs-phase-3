require 'track'

RSpec.describe Track do
  it "searches" do
    track = Track.new("one two", "three four")
    expect(track.matches?("one")).to eq true
    expect(track.matches?("hello")).to eq false
  end
end