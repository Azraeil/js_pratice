require_relative '../lib/7kyu_tricky_doubles.rb'
RSpec.describe "檢驗 tricky double" do
  it "輸入 15 應該得到 30" do
    result = tricky_doubles(15)
    expect(result).to eq(30)
  end

  it "輸入 100 應該得到 200" do
    result = tricky_doubles(100)
    expect(result).to eq(200)
  end

  it "輸入 4343 應該得到 4343" do
    result = tricky_doubles(4343)
    expect(result).to eq(4343)
  end
end
