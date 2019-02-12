require_relative '../lib/6kyu_readable_N_choose_K.rb'

RSpec.describe "Integer" do
  describe "Readable n choose k" do
    it "0.choose(0) == 1" do
      n = 0
      result = n.choose(0)
      expect(result).to eq 1
    end

    it "1.choose(1) == 1" do
      n = 1
      result = n.choose(1)
      expect(result).to eq 1
    end

    it "2.choose(1) == 2" do
      n = 2
      result = n.choose(1)
      expect(result).to eq 2
    end

    it "3.choose(2) == 3" do
      n = 3
      result = n.choose(2)
      expect(result).to eq 3
    end

    it "10.choose(4) == 210" do
      n = 10
      result = n.choose(4)
      expect(result).to eq 210
    end
  end
end
