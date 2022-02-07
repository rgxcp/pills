# https://leetcode.com/problems/remove-element/

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  count = 0
  nums.each do |num|
    unless num == val
      nums[count] = num
      count += 1
    end
  end
  count
end
