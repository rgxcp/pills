# https://leetcode.com/problems/longest-common-prefix/

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  min_length = strs[0].size
  strs[1...strs.size].each_with_index do |str, index|
    min_length = [min_length, str.size].min
  end

  result = ""
  (0...min_length).each do |i|
    current = strs[0][i]
    strs.each do |str|
      return result unless str[i] == current
    end
    result += current
  end
  result
end
