require "rspec"
require_relative "solution"

RSpec.describe "remove_duplicates" do
  context "when given input '[1, 1, 2]'" do
    it "returns 2" do
      numbers = [1, 1, 2]
      expect(remove_duplicates(numbers)).to eq(2)
    end

    it "changes the input to '[1, 2, 2]'" do
      numbers = [1, 1, 2]
      remove_duplicates(numbers)
      expect(numbers).to eq([1, 2, 2])
    end
  end

  context "when given input '[0, 0, 1, 1, 1, 2, 2, 3, 3, 4]'" do
    it "returns 5" do
      numbers = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
      expect(remove_duplicates(numbers)).to eq(5)
    end

    it "changes the input to '[0, 1, 2, 3, 4, 2, 2, 3, 3, 4]'" do
      numbers = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
      remove_duplicates(numbers)
      expect(numbers).to eq([0, 1, 2, 3, 4, 2, 2, 3, 3, 4])
    end
  end
end
