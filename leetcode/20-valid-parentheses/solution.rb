# https://leetcode.com/problems/valid-parentheses/

# @param {String} s
# @return {Boolean}
def is_valid(s)
  rules = {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }

  s[1] == rules[s[0]]
end
