require_relative '../lib/7kyu_switch_lights.rb'

RSpec.describe "Switch Lights" do
  it "輸入 [0, 0] 輸出 [0, 0]" do
    result = switch_lights([0, 0])
    expect(result).to eq [0, 0]
  end

  it "輸入 [1, 1] 輸出 [1, 0]" do
    result = switch_lights([1, 1])
    expect(result).to eq [1, 0]
  end

  it "輸入 [1, 1, 1] 輸出 [0, 1, 0]" do
    result = switch_lights([1, 1, 1])
    expect(result).to eq [0, 1, 0]
  end

  it "輸入 [1, 1, 1, 1, 1] 輸出 [0, 1, 0, 1, 0]" do
    result = switch_lights([1, 1, 1, 1, 1])
    expect(result).to eq [0, 1, 0, 1, 0]
  end
end
