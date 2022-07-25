# Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.
#
#
#
#   Example 1:
#
#   Input: s = "leetcode"
# Output: 0
# Example 2:
#
#   Input: s = "loveleetcode"
# Output: 2
# Example 3:
#
#   Input: s = "aabb"
# Output: -1

def first_uniq_char(s)
  hash = s.chars.group_by{|x| x}.map{|k,v|[k,v.size]}.to_h
  arr = hash.select{|k,v| v == 1}
  if arr.empty?
    -1
  else
    s.index(arr.first[0])
  end
end

def first_uniq_char(s)
  hash = {}
  s.each_char {|x| hash[x] ||= 1; hash[x] += 1}
  s.each_char.with_index {|x, i| return i if hash[x] == 2}
  -1
end

puts first_uniq_char('leetcode')
puts first_uniq_char('loveleetcode')