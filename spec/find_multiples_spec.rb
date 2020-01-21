require_relative '../lib/find_multiples.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(2)).to eq(false)
    expect(is_multiple_of_3_or_5?(14)).to eq(false)
    expect(is_multiple_of_3_or_5?(127)).to eq(false)
    expect(is_multiple_of_3_or_5?(169)).to eq(false)
  end
end

describe "the sum_of_3_or_5_multiples method" do
  it "should return Il faut entrer un entier naturel! when the number is not an integer and not positive" do
   expect(sum_of_3_or_5_multiples(-1)).to eq("Il faut entrer un entier naturel!")
   expect(sum_of_3_or_5_multiples("abcde")).to eq("Il faut entrer un entier naturel!")
   expect(sum_of_3_or_5_multiples(-60)).to eq("Il faut entrer un entier naturel!")
   expect(sum_of_3_or_5_multiples("ooomph")).to eq("Il faut entrer un entier naturel!")
  end
end