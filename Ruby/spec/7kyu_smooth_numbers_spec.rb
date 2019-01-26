require_relative "../lib/7kyu_smooth_numbers.rb"

RSpec.describe "檢驗 is_smooth 方法" do
  it "輸入 16 回傳 'power of 2'" do
    result = is_smooth(16)
    expect(result).to eq "power of 2"
  end

  it "輸入 36 回傳 '3-smooth'" do
    result = is_smooth(36)
    expect(result).to eq "3-smooth"
  end

  it "輸入 60 回傳 'Hamming number'" do
    result = is_smooth(60)
    expect(result).to eq "Hamming number"
  end

  it "輸入 98 回傳 'humble number'" do
    result = is_smooth(98)
    expect(result).to eq "humble number"
  end

  it "輸入 111 回傳 'non-smooth'" do
    result = is_smooth(111)
    expect(result).to eq "non-smooth"
  end
end
