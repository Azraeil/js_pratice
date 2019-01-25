require_relative "../lib/7kyu_hash_to_string.rb"

# 注意 describe 後面不要接 method
RSpec.describe "檢驗 list_in_range 方法" do
  it '輸入 hash = {"Zero" => 0, "Three" => 3, "One" => 1, "Two" => 2}, range = (0..1) 應輸出 "Zero (0), One (1)"' do
    result = list_in_range({"Zero" => 0, "Three" => 3, "One" => 1, "Two" => 2}, (0..1))
    expect(result).to eq("Zero (0), One (1)")
  end
end
