# frozen_string_literal: true

# Find the Smallest Common Number
#
#

def find_least_common_number(arr1, arr2, arr3)
  # Initialize starting indexes for arr1, arr2 and arr3
  i = 0
  j = 0
  k = 0

  # Iterate through three arrays
  while i < arr1.length && j < arr2.length && k < arr3.length
    # Finding the smallest common number
    return arr1[i] if arr1[i] == arr2[j] && arr2[j] == arr3[k]

    # Let's increment the iterator
    # for the smallest value.
    if arr1[i] <= arr2[j] && arr1[i] <= arr3[k]
      i += 1

    elsif arr2[j] <= arr1[i] && arr2[j] <= arr3[k]
      j += 1

    elsif arr3[k] <= arr1[i] && arr3[k] <= arr2[j]
      k += 1
    end
  end
  -1
end

v1 = (0..99).to_a.sample(10).sort
v2 = (0..99).to_a.sample(10).sort
v3 = (0..99).to_a.sample(10).sort

result = find_least_common_number(v1, v2, v3)
puts "Array 1: #{v1}"
puts "Array 2: #{v2}"
puts "Array 3: #{v3}"
puts "Least Common Number: #{result}"
