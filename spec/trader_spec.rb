require_relative '../lib/trader.rb'

describe "the potential_benefice method" do
  it "should calculate the difference between the 2 values" do
    expect(potential_benefice(4, 7)).to eq(3)
    expect(potential_benefice(-5, -7)).to eq(-2)
    expect(potential_benefice(0, 0)).to eq(0)
  end
end

describe "the best_benefice_when_buying method" do
  it "should return the best benefice that can be made on a value given a certain buy index input" do
    expect(best_benefice_when_buying([1, 8, 6, 3, 7, 4], 0)).to eq(7)
    expect(best_benefice_when_buying([10, 8, 6, 0, 7, 4], 3)).to eq(7)
    expect(best_benefice_when_buying([1, 8, 6, 3, 7, 4], 1)).to eq(-1)
    expect(best_benefice_when_buying([1, 8, 6, 3, 7, 4, 14, 5, 8, 6], 1)).to eq(6)
  end
end

describe "the best_turn_to_buy method" do
  it "should return the best turn to buy given an array of turns" do
    expect(best_turn_to_buy([5, 5, 8, 6, 4, 14])).to eq(4)
    expect(best_turn_to_buy([5, 5, 8, 6, 4, 14, 1, 18])).to eq(6)
    expect(best_turn_to_buy([18, 5, 8, 7, 4, 4])).to eq(1)
  end
end

describe "the best_turn_to_sell method" do
  it "should return the best turn for sell given an array of turns AND the turn to buy" do
    expect(best_turn_to_sell([5, 5, 8, 6, 4, 14], 2)).to eq(5)
    expect(best_turn_to_sell([18, 5, 8, 7, 4, 4], 2)).to eq(3)
    expect(best_turn_to_sell([18, 5, 8, 7, 4, 4, 54, 32, 6], 7)).to eq(8)
  end
end

describe "the display_result method" do
  it "should return a p describing the best turn to buy and to sell" do
    expect(display_result(2, 7)).to eq("Il faut acheter au tour n° 3 et revendre au tour n° 8.")
  end
end

describe "the main method" do
  it "should return a p describing the best turn to buy and to sell" do
    expect(main([14, 7, 5, 2, 6, 8, 4])).to eq("Il faut acheter au tour n° 4 et revendre au tour n° 6.")
  end
end