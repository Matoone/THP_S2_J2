require_relative '../lib/caesar_cipher.rb'

describe "the encode_letter method" do
  it "should return error: You must enter a string! when anything else thant a string is in input" do
    expect(encode_letter(3, 5)).to eq("error: You must enter a string!")
    expect(encode_letter([1, 7], 5)).to eq("error: You must enter a string!")

  end

  it "should return error: This method is designed for only one character length!" do
    expect(encode_letter("Hey boy!", 5)).to eq("error: This method is designed for only one character length!")
    expect(encode_letter("Hfsfeiguxdjh!", 5)).to eq("error: This method is designed for only one character length!")
   
  end
  it "should return letter corresponding to letter + key" do
    expect(encode_letter("H", 5)).to eq("M")
    expect(encode_letter("a", 5)).to eq("f")
    expect(encode_letter("Z", 5)).to eq("E")
    expect(encode_letter("w", 4)).to eq("a")
    expect(encode_letter("W", 4)).to eq("A")
  end
end

describe "the caesar_cipher method" do
  it "should return error: You must enter a string! if anything else than a string is in input" do
   expect(caesar_cipher(2, 3)).to eq("error: You must enter a string!")
   expect(caesar_cipher([2, 8], 3)).to eq("error: You must enter a string!")
   expect(caesar_cipher(["hey", "jude"], 6)).to eq("error: You must enter a string!")
  
  end

  it "sould return the right coded sentence" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("aBcD!!  E", 2)).to eq("cDeF!!  G")
  end
end