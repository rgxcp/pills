require "rspec"
require_relative "solution"

RSpec.describe "roman_to_int" do
  context "when given input 'I'" do
    it "returns 1" do
      expect(roman_to_int("I")).to eq(1)
    end
  end

  context "when given input 'V'" do
    it "returns 5" do
      expect(roman_to_int("V")).to eq(5)
    end
  end

  context "when given input 'X'" do
    it "returns 10" do
      expect(roman_to_int("X")).to eq(10)
    end
  end

  context "when given input 'L'" do
    it "returns 50" do
      expect(roman_to_int("L")).to eq(50)
    end
  end

  context "when given input 'C'" do
    it "returns 100" do
      expect(roman_to_int("C")).to eq(100)
    end
  end

  context "when given input 'D'" do
    it "returns 500" do
      expect(roman_to_int("D")).to eq(500)
    end
  end

  context "when given input 'M'" do
    it "returns 1000" do
      expect(roman_to_int("M")).to eq(1000)
    end
  end

  context "when given input 'III'" do
    it "returns 3" do
      expect(roman_to_int("III")).to eq(3)
    end
  end

  context "when given input 'LVIII'" do
    it "returns 58" do
      expect(roman_to_int("LVIII")).to eq(58)
    end
  end

  context "when given input 'MCMXCIV'" do
    it "returns 1994" do
      expect(roman_to_int("MCMXCIV")).to eq(1994)
    end
  end
end
