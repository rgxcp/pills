# https://leetcode.com/problems/roman-to-integer/

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  rules = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  result = 0
  (s.size - 1).downto(0) do |i|
    number = rules[s[i]]
    if 4 * number < result
      result -= number
    else
      result += number
    end
  end
  result
end
