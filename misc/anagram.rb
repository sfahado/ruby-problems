# frozen_string_literal: true

# Given two strings s and t, return true if t is an anagram of s, and false otherwise.
#
#   An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
#
#
#
#   Example 1:
#
#   Input: s = "anagram", t = "nagaram"
# Output: true
# Example 2:
#
#   Input: s = "rat", t = "car"
# Output: false
#

def is_anagram(s, t)
  s.gsub!(/[^a-zA-Z\d]/, '').downcase
  t.gsub!(/[^a-zA-Z\d]/, '').downcase
  s_hash = {}
  t_hash = {}
  s.each_char do |sis|
    s_hash[sis] ||= 1
    s_hash[sis] = +1
  end
  t.each_char do |tis|
    t_hash[tis] ||= 1
    t_hash[tis] += 1
  end
  s_hash == t_hash
end

def is_anagram(s, t)
  s.chars.sort == t.chars.sort
end

def is_anagram(s, t)
  s.chars.group_by { |c| c } == t.chars.group_by { |c| c }
end

# Input: s = "anagram", t = "nagaram"
puts is_anagram('anagram', 'nagaram')
puts is_anagram('name', 'nama')
