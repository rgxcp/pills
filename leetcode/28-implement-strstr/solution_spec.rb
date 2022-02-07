require "rspec"
require_relative "solution"

RSpec.describe "str_str" do
  context "when given haystack = 'hello', needle = 'll'" do
    it "returns 2" do
      haystack = "hello"
      needle = "ll"
      expect(str_str(haystack, needle)).to eq(2)
    end
  end

  context "when given haystack = 'aaaaa', needle = 'bba'" do
    it "returns -1" do
      haystack = "aaaaa"
      needle = "bba"
      expect(str_str(haystack, needle)).to eq(-1)
    end
  end

  context "when given haystack = '', needle = ''" do
    it "returns 0" do
      haystack = ""
      needle = ""
      expect(str_str(haystack, needle)).to eq(0)
    end
  end

  context "when given haystack = 'aaa', needle = 'aaaa'" do
    it "returns -1" do
      haystack = "aaa"
      needle = "aaaa"
      expect(str_str(haystack, needle)).to eq(-1)
    end
  end
end
