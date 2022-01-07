require "rspec"
require_relative "scratchpad"

RSpec.describe "exists?" do
  context "item not exists" do
    it "returns false" do
      cars = ["Mazda", "BWM", "Rolls Royce"]
      result = exists?(cars, "Bentley")
      expect(result).to be_falsey
    end
  end

  context "item exists" do
    it "returns true" do
      cars = ["Mazda", "BWM", "Rolls Royce"]
      result = exists?(cars, "BWM")
      expect(result).to be_truthy
    end
  end
end

RSpec.describe "linear_search" do
  context "element not exists" do
    it "returns nil" do
      numbers = [3, 7, 15, 23, 46, 59, 63, 72, 88, 95]
      result = linear_search(numbers, 100)
      expect(result).to be_nil
    end
  end

  context "element exists" do
    it "returns the index" do
      numbers = [3, 7, 15, 23, 46, 59, 63, 72, 88, 95]
      result = linear_search(numbers, 72)
      expect(result).to eq(7)
    end
  end
end

RSpec.describe "binary_search" do
  context "element not exists" do
    it "returns nil" do
      numbers = [3, 7, 15, 23, 46, 59, 63, 72, 88, 95]
      result = binary_search(numbers, 100)
      expect(result).to be_nil
    end
  end

  context "element exists" do
    it "returns the index" do
      numbers = [3, 7, 15, 23, 46, 59, 63, 72, 88, 95]
      result = binary_search(numbers, 72)
      expect(result).to eq(7)
    end
  end
end
