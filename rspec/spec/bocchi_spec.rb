require "spec_helper"
require "./lib/bocchi"

describe Bocchi do
  it "is named 'kura'" do
    bocchi = Bocchi.new("kura")
    expect(bocchi.name).to eq "kura"
  end

  it "is Bocchi" do
    bocchi = Bocchi.new("kura")
    # be_xxx: 述語マッチャ
    expect(bocchi).to be_isBocchi
  end

  it "is Fun" do
    bocchi = Bocchi.new("kura")
    expect(bocchi).not_to be_isFun
  end
end
