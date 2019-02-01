require_relative '../lib/7kyu_collatz_conjecture_length.rb'

RSpec.describe "Compollatz conjecture 檢驗" do
  it "輸入 n = 1, Compollatz conjecture 長度為 1" do
    result = collatz(1)
    expect(result).to eq 1
  end

  it "輸入 n = 10, Compollatz conjecture 長度為 7" do
    # 10, 5, 16, 8, 4, 2, 1
    result = collatz(10)
    expect(result).to eq 7
  end

  it "輸入 n = 20, Compollatz conjecture 長度為 8" do
    result = collatz(20)
    expect(result).to eq 8
  end
end
