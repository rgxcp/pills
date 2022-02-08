require "rspec"
require_relative "solution"

RSpec.describe "two_sum" do
  context "when given nums = [2, 7, 11, 15], target = 9" do
    it "returns [1, 0]" do
      nums = [2, 7, 11, 15]
      target = 9
      expect(two_sum(nums, target)).to eq([1, 0])
    end
  end

  context "when given nums = [3, 2, 4], target = 6" do
    it "returns [2, 1]" do
      nums = [3, 2, 4]
      target = 6
      expect(two_sum(nums, target)).to eq([2, 1])
    end
  end

  context "when given nums = [3, 3], target = 6" do
    it "returns [1, 0]" do
      nums = [3, 3]
      target = 6
      expect(two_sum(nums, target)).to eq([1, 0])
    end
  end
end
