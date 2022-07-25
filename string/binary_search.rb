# frozen_string_literal: true

# Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
#
#   If target is not found in the array, return [-1, -1].
#
#   You must write an algorithm with O(log n) runtime complexity.
#
#
#
#   Example 1:
#
#   Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]
# Example 2:
#
#   Input: nums = [5,7,7,8,8,10], target = 6
# Output: [-1,-1]
# Example 3:
#
#   Input: nums = [], target = 0
# Output: [-1,-1]

def search_range(nums, target)
  first = nums.index(target)
  return [-1, -1] if first.nil?

  second = first
  second += 1 while (second < nums.length - 1) && (nums[second + 1] == nums[first])
  [first, second]
end

def search_range(nums, target)
  i = 0
  j = nums.length - 1
  output = []

  while i < nums.length
    if nums[i] == target
      output[0] = i
      break
    end
    i += 1
  end

  while j >= 0
    if nums[j] == target
      output[1] = j
      break
    end
    j -= 1
  end

  output.empty? ? [-1, -1] : output
end
