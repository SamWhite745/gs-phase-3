require "diary"
require "secret_diary"

RSpec.describe "integration" do
  it "initializes" do
    diary = Diary.new("my secret stuff")
    secret_diary = SecretDiary.new(diary)

    expect(secret_diary.read).to eq "Go away!"
  end

  it "unlocks and reads" do
    diary = Diary.new("my secret stuff")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock

    expect(secret_diary.read).to eq "my secret stuff"
  end

  it "locks, unlocks and reads" do
    diary = Diary.new("my secret stuff")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    secret_diary.unlock

    expect(secret_diary.read).to eq "my secret stuff"
  end
end