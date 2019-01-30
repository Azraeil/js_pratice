require_relative '../lib/7kyu_hop_across.rb'

RSpec.describe "檢驗 Hop Across" do
  it "輸入 [2, 2, 3, 1, 1, 2, 1] 輸出 7" do
    result = hop_across([2, 2, 3, 1, 1, 2, 1])
    expect(result).to eq 7
  end
end
