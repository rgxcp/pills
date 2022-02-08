require "rspec"
require_relative "solution"

RSpec.describe "is_palindrome" do
  context "when given input -1" do
    it "returns false" do
      expect(is_palindrome(-1)).to be(false)
    end
  end

  context "when given input 0" do
    it "returns true" do
      expect(is_palindrome(0)).to be(true)
    end
  end

  context "when given input 10" do
    it "returns false" do
      expect(is_palindrome(10)).to be(false)
    end
  end

  context "when given input 121" do
    it "returns true" do
      expect(is_palindrome(121)).to be(true)
    end
  end
end
