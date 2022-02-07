# https://leetcode.com/problems/implement-strstr/

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if needle.empty? || haystack == needle
  return -1 if needle.size > haystack.size

  (0..(haystack.size - needle.size)).each do |i|
    return i if haystack[i...(i + needle.size)] == needle
  end

  -1
end
