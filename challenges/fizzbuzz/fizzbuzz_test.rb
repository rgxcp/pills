require "rspec"
require_relative "fizzbuzz"

RSpec.describe "fizzbuzz" do
  context "1 to 20" do
    it "returns the result" do
      result = fizzbuzz(20)
      expect(result).to eq("1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz")
    end
  end
end
