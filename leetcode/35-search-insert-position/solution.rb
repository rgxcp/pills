# https://leetcode.com/problems/search-insert-position/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  return nums.size if target > nums.last

  insert_at = 0
  nums.each_with_index do |num, index|
    return index if num == target
    insert_at = index + 1 if num < target && nums[index + 1] > target
  end
  insert_at
end
