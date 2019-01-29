require_relative '../lib/7kyu_common_substrings.rb'

RSpec.describe "Cummon Substings" do
  it "輸入 ('Something', 'Home') 輸出 true" do
    result = substring_test('Something', 'Home')
    expect(result).to eq true
  end

  it "輸入 ('Something', 'Fun') 輸出 false" do
    result = substring_test('Something', 'Fun')
    expect(result).to eq false
  end
end
