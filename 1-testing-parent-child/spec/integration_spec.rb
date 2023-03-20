require "music_library"
require "track"

RSpec.describe "integration" do
  it "add and lists all tracks" do
    track_1 = Track.new("title1","artist1")
    track_2 = Track.new("title2","artist2")

    music_library = MusicLibrary.new
    music_library.add(track_1)
    music_library.add(track_2)

    expect(music_library.all).to eq [track_1,track_2]
  end

  it "searches by title" do
    track_1 = Track.new("one two","three four")
    track_2 = Track.new("five six","seven eight")

    music_library = MusicLibrary.new
    music_library.add(track_1)
    music_library.add(track_2)

    expect(music_library.search("two")).to eq [track_1]
  end
end