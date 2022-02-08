# https://leetcode.com/problems/palindrome-number/

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative? || (x % 10 == 0 && x != 0)

  reverted_number = 0
  while x > reverted_number
    reverted_number = (reverted_number * 10) + (x % 10)
    x /= 10
  end
  x == reverted_number || x == reverted_number / 10
end
