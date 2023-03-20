require "music_library"

RSpec.describe MusicLibrary do
  it "adds tracks and returns them" do
    fake_track_1 = double :fake_track_1
    fake_track_2 = double :fake_track_2

    music_library = MusicLibrary.new
    music_library.add(fake_track_1)
    music_library.add(fake_track_2)
    expect(music_library.all).to eq [fake_track_1,fake_track_2]
  end

  it "searches for title" do
    fake_track_1 = double :fake_track_1, matches?: true
    fake_track_2 = double :fake_track_2, matches?: false

    
    music_library = MusicLibrary.new
    music_library.add(fake_track_1)
    music_library.add(fake_track_2)
    expect(music_library.search("two")).to eq [fake_track_1]
  end
end