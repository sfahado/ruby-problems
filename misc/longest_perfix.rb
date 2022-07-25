# frozen_string_literal: true

# Write a function to find the longest common prefix string amongst an array of strings.
#
#   If there is no common prefix, return an empty string "".
#
#
#
#   Example 1:
#
#   Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:
#
#   Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

def longest_common_prefix(strs)
  return '' if strs.empty? || strs.any? { |i| i.to_s.empty? || i.nil? }

  s = ''
  base = strs[0]
  (0..base.length - 1).each do |i|
    if strs.all? { |x| x[i] == base[i] }
      s += base[i]
    else
      break
    end
  end
  s
end

puts longest_common_prefix(%w[fahad fahad faha])
