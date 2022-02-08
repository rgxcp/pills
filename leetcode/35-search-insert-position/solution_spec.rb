require "rspec"
require_relative "solution"

RSpec.describe "search_insert" do
  context "when given nums = [1, 3, 5, 6], target = 5" do
    it "returns 2" do
      nums = [1, 3, 5, 6]
      target = 5
      expect(search_insert(nums, target)).to eq(2)
    end
  end

  context "when given nums = [1, 3, 5, 6], target = 2" do
    it "returns 1" do
      nums = [1, 3, 5, 6]
      target = 2
      expect(search_insert(nums, target)).to eq(1)
    end
  end

  context "when given nums = [1, 3, 5, 6], target = 7" do
    it "returns 4" do
      nums = [1, 3, 5, 6]
      target = 7
      expect(search_insert(nums, target)).to eq(4)
    end
  end

  context "when given nums = [1, 3, 5, 6], target = 0" do
    it "returns 0" do
      nums = [1, 3, 5, 6]
      target = 0
      expect(search_insert(nums, target)).to eq(0)
    end
  end

  context "when given nums = [2, 5], target = 1" do
    it "returns 0" do
      nums = [2, 5]
      target = 1
      expect(search_insert(nums, target)).to eq(0)
    end
  end
end
