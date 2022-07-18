# frozen_string_literal: true

# We’re given an array of integers, nums. Rotate the array by n elements, where n is an integer:
# For positive values of n, perform a right rotation.
#   For negative values of n, perform a left rotation.
#   Make sure we make changes to the original array.
#
#
require 'byebug'
def rotate(arr, num)
  puts "arr is \n #{arr}"
  puts "element to rotate #{num}"

  arr if arr.length >= 2 || num.zero?
  if num.positive?
    temp = arr[0..num - 1]
    arr[num..arr.length] + temp
  else
    temp = arr[num..-1]
    temp + arr[0..num - 1]
  end
end

def rotate_array(nums, n)
  length = nums.length

  # Let's normalize rotations
  n = n % length
  n += length if n.negative?

  temp = []

  # copy last 'n' elements of array into temp
  ((length - n)...length).each do |i|
    temp.push(nums[i])
  end

  # shift original array to make space for rotated elements
  (length - 1).downto(n - 1) { |i| nums[i] = nums[i - n] }

  # copy temp into original array
  n.times { |i| nums[i] = temp[i] }
  nums
end

arr = (0..99).to_a.sample(10).sort
rotate = rand(-arr.length..arr.length)

puts "after rotate \n #{rotate(arr, rotate)}"

puts "advance rotate \n #{rotate_array(arr, rotate)}"
