require_relative '../lib/shakespeare.rb'


describe "the scan_word method" do
  it "should return the word if it has matched or nil if didn't" do
    expect(scan_word("matou", ["hu", "lili"])).to eq(nil)
    expect(scan_word("matou", ["hu", "lili", "matou"])).to eq("matou")
    expect(scan_word("matou", ["hu", "lili", "Matou"])).to eq("matou")
  end
end