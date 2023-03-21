require 'cat_facts'

RSpec.describe CatFacts do
  it "gets a cat fact" do
    fake_requester = double :fake_requester
    allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact"))
    .and_return('{"fact":"Neutering a cat extends its life span by two or three years.","length":60}')
    cat_facts = CatFacts.new(fake_requester)
    expect(cat_facts.provide).to eq "Cat fact: Neutering a cat extends its life span by two or three years."
  end
end