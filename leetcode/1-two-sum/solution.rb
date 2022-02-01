# https://leetcode.com/problems/two-sum/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums_hash = {}

  nums.each_with_index do |num, index|
    diff = target - num
    return [index, nums_hash[diff]] if nums_hash[diff]
    nums_hash[num] = index
  end
end
