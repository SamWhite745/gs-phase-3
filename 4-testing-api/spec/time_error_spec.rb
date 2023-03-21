require 'time_error'

RSpec.describe TimeError do
  it "find the difference in time" do
    fake_requester = double :fake_requester
    allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).
    and_return('{"abbreviation":"GMT","client_ip":"31.124.103.96","datetime":"2023-03-21T13:37:01.823811+00:00","day_of_week":2,"day_of_year":80,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1679405821,"utc_datetime":"2023-03-21T13:37:01.823811+00:00","utc_offset":"+00:00","week_number":12}')
    time_error = TimeError.new(fake_requester)
    time_now = Time.new(2022, 1, 1, 0, 0, 0)

    expect(time_error.error(time_now)).to eq 38410621.823811
  end
end