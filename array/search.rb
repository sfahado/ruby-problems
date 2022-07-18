# frozen_string_literal: true

# We are given an array of integers, nums, sorted in ascending order, and an integer value, target.
# If the target exists in the array, return its index. If the target does not exist, then return -1.
# The binary search divides the input array by half at every step. After every step, either we find
# the index we are looking for, or we discard half of the array.
#

def search(arr, target)
  puts "arr is #{arr}"
  puts "target is #{target}"

  low = 0
  high = arr.length - 1

  while low <= high
    mid = low + ((high - low) / 2).floor
    if arr[mid] == target
      return mid
    elsif arr[mid] > target
      high = mid + 1
    else
      low = mid - 1
    end
  end
  -1
end

arr = (0..99).to_a.sample(10).sort
target = rand(0..99)

puts search(arr, target)
