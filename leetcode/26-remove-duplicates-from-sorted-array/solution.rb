# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  count = 0
  nums.each_with_index do |num, index|
    next if index < nums.size - 1 && num == nums[index + 1]
    nums[count] = num
    count += 1
  end
  count
end
