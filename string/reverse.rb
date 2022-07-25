# frozen_string_literal: true

# Can you write a function that reverses an inputted string without using the built-in Array#reverse method?
#
# Let's look at some examples. So, calling:
#
# reverseString("jake") should return "ekaj".
#
# reverseString("reverseastring") should return "gnirtsaesrever".

def reverse(string)
  puts "before reverse #{string}"
  str_arr = []
  string.each_char do |c|
    str_arr.push(c)
  end
  i = str_arr.length
  arr = []
  i.downto(0) do |num|
    arr.push(str_arr[num])
  end
  arr.join('')
end

def reverse_string(string)
  puts "before reverse #{string}"
  split_string = string.split('')
  reversed = []
  string.size.times { reversed << split_string.pop }
  reversed.join
end

(1..10).each do |i|
  limit = rand(1..100)
  string = (i...limit).map { rand(65..90).chr }.join
  puts reverse_string(string)
end
