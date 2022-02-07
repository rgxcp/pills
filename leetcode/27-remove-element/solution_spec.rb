require "rspec"
require_relative "solution"

RSpec.describe "remove_element" do
  context "when given nums = [3, 2, 2, 3], val = 3" do
    it "returns 2" do
      nums = [3, 2, 2, 3]
      val = 3
      expect(remove_element(nums, val)).to eq(2)
    end
  end

  context "when given nums = [0, 1, 2, 2, 3, 0, 4, 2], val = 2" do
    it "returns 5" do
      nums = [0, 1, 2, 2, 3, 0, 4, 2]
      val = 2
      expect(remove_element(nums, val)).to eq(5)
    end
  end
end
