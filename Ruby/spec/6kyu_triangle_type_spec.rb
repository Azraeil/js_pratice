require_relative '../lib/6kyu_triangle_type.rb'

RSpec.describe 'Triangle type' do
  it "triangle_type(2, 4, 6) == 0" do
    result = triangle_type(2, 4, 6)
    expect(result).to eq 0
  end

  it "triangle_type(8, 5, 7) == 1" do
    result = triangle_type(8, 5, 7)
    expect(result).to eq 1
  end

  it "triangle_type(3, 4, 5) == 2" do
    result = triangle_type(3, 4, 5)
    expect(result).to eq 2
  end

  it "triangle_type(7, 12, 8) == 3" do
    result = triangle_type(7, 12, 8)
    expect(result).to eq 3
  end
end
