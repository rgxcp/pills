require "rspec"
require_relative "solution"

RSpec.describe "longest_common_prefix" do
  context "when given input ['flower', 'flow', 'flight']" do
    it "returns 'fl'" do
      expect(longest_common_prefix(["flower", "flow", "flight"])).to eq("fl")
    end
  end

  context "when given input ['dog', 'racecar', 'car']" do
    it "returns ''" do
      expect(longest_common_prefix(["dog", "racecar", "car"])).to eq("")
    end
  end
end
