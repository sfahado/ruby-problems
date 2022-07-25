# frozen_string_literal: true

# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
#
#   Given a string s, return true if it is a palindrome, or false otherwise.
#
#
#
#   Example 1:
#
#   Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.
#   Example 2:
#
#   Input: s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.
#
def is_palindrome(s)
  s = s.gsub(/[^a-zA-Z\d]/, '').downcase
  return true if s.empty? || s.size.eql?(1)

  s = s.gsub(/[^a-zA-Z\d]/, '').downcase
  s.reverse == s
end

puts is_palindrome('fahad')
puts is_palindrome('fahaf')
puts is_palindrome('A man, a plan, a canal: Panama')
