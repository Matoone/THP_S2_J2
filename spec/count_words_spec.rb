require_relative '../lib/count_words.rb'

describe "the search_word_in method" do
  it "should return an array containing the matched words" do
    expect(search_word_in("yeah", ["do", "yellow", "yeah"])).to eq(["yeah"])
    expect(search_word_in("yeah", ["do", "yellow", "no"])).to eq([])
  end
end

describe "the word_counter method" do
  it "should return a hash containing the matched words and the number of times they matched" do
    expect(word_counter("How are you going dude going ? Time to do your return part saving the planet !", ["below", "return", "going"])).to eq({"going" => 2, "return" => 1})
  end
end