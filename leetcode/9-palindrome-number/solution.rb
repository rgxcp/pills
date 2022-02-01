# https://leetcode.com/problems/palindrome-number/

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?

  if x.to_s.split("").reverse.join.to_i == x
    true
  else
    false
  end
end
