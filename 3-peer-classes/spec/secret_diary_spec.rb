require "secret_diary"

RSpec.describe SecretDiary do
  it "initializes" do
    fake_diary = double :fake_diary
    secret_diary = SecretDiary.new(fake_diary)

    expect(secret_diary.read).to eq "Go away!"
  end

  it "unlocks and reads" do
    fake_diary = double :fake_diary, read: "My secret stuff"
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "My secret stuff"
  end
end