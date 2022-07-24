# frozen_string_literal: true

# An array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is moved to the first place. For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7] (elements are shifted right by one index and 6 is moved to the first place).
#
#   The goal is to rotate array A K times; that is, each element of A will be shifted to the right K times.
#
#   Write a function:
#
#             def solution(a, k)
#
#               that, given an array A consisting of N integers and an integer K, returns the array A rotated K times.
#
#                 For example, given
#
#               A = [3, 8, 9, 7, 6]
#               K = 3
#               the function should return [9, 7, 6, 3, 8]. Three rotations were made:
#
#                                                                                  [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
#               [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
#               [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
#               For another example, given
#
#               A = [0, 0, 0]
#               K = 1
#               the function should return [0, 0, 0]
#
#               Given
#
#               A = [1, 2, 3, 4]
#               K = 4
#               the function should return [1, 2, 3, 4]
#
#               Assume that:
#
#                        N and K are integers within the range [0..100];
#               each element of array A is an integer within the range [−1,000..1,000].
#                 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.

# def solution(a, k)
#   return a if k > a.size
#
#   subsequent_array = a[0..k - 1]
#   temp = Array.new(a.length - k, 0)
#   i = 0
#   j = k
#   while j < a.size
#     temp[i] = a[j]
#     i += 1
#     j += 1
#   end
#   temp + subsequent_array
# end

def solution(a, k)
  result = Array.new(a.length)
  (0..(a.length - 1)).each do |i|
    result[(i + k) % a.length] = a[i]
  end
  result
end

puts solution([*1..10], 4)
puts solution([3, 8, 9, 7, 6], 3)
