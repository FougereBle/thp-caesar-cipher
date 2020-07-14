require_relative "../lib/day_trader.rb"

RSpec.describe "Check Gains" do
  it "Get the gain" do
    expect(get_gain(10, 15)).to be > get_gain(1, 3)
    expect(get_gain(10, 11)).to be < get_gain(15, 30)
    expect(get_gain(10, 15)).to eq get_gain(15, 20)
  end

  it "Get the best deal" do
    expect(get_best_deal([2, 50, 10, 1])).to eq [2, 50]
    expect(get_best_deal([500, 3, 4, 100])).to eq [3, 100]
  end
end
