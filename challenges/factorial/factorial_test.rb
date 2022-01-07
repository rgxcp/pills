require "rspec"
require_relative "factorial"

RSpec.describe "factorial" do
  context "calculate factorial of 0" do
    it "returns 1" do
      result = factorial(0)
      expect(result).to eq(1)
    end
  end

  context "calculate factorial of 1" do
    it "returns 1" do
      result = factorial(1)
      expect(result).to eq(1)
    end
  end

  context "calculate factorial of 2" do
    it "returns 2" do
      result = factorial(2)
      expect(result).to eq(2)
    end
  end

  context "calculate factorial of 3" do
    it "returns 6" do
      result = factorial(3)
      expect(result).to eq(6)
    end
  end

  context "calculate factorial of 4" do
    it "returns 24" do
      result = factorial(4)
      expect(result).to eq(24)
    end
  end

  context "calculate factorial of 5" do
    it "returns 120" do
      result = factorial(5)
      expect(result).to eq(120)
    end
  end
end
