# https://leetcode.com/problems/valid-parentheses/

# @param {String} s
# @return {Boolean}
def is_valid(s)
  rules = {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }

  stacks = []
  (0...s.size).each do |i|
    char = s[i]
    if rules.include?(char)
      stacks << char
    else
      return false unless rules[stacks.pop] == char
    end
  end
  stacks.size == 0
end
