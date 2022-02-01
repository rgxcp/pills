require "rspec"
require_relative "solution"

RSpec.describe "is_valid" do
  context "when given input '()'" do
    it "returns true" do
      expect(is_valid("()")).to be true
    end
  end

  context "when given input '{}'" do
    it "returns true" do
      expect(is_valid("{}")).to be true
    end
  end
end
