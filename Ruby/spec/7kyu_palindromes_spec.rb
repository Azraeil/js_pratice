require_relative './7kyu_palindromes_here_and_there.rb'

RSpec.describe "回文數轉換" do
  it "輸入 [101, 2, 85, 33, 14014] 輸出 [1, 1, 0, 1, 0]" do
    result = convert_palindromes([101, 2, 85, 33, 14014])
    expect(result).to eq([1, 1, 0, 1, 0])
  end

  it "輸入 [45, 21, 303, 56] 輸出 [0, 0, 1, 0]" do
    result = convert_palindromes([45, 21, 303, 56])
    expect(result).to eq([0, 0, 1, 0])
  end

  it "輸入 [22, 303, 76, 411, 89] 輸出 [1, 1, 0, 0, 0]" do
    result = convert_palindromes([22, 303, 76, 411, 89])
    expect(result).to eq([1, 1, 0, 0, 0])
  end

  it "輸入 [653, 808, 5] 輸出 [0, 1, 1]" do
    result = convert_palindromes([653, 808, 5])
    expect(result).to eq([0, 1, 1])
  end

  it "輸入 [4, 23, 441, 565, 19, 818] 輸出 [1, 0, 0, 1, 0, 1]" do
    result = convert_palindromes([4, 23, 441, 565, 19, 818])
    expect(result).to eq([1, 0, 0, 1, 0, 1])
  end
end
