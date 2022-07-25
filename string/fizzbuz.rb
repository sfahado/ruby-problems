# frozen_string_literal: true

# Given an integer n, return a string array answer (1-indexed) where:
#
#   answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
#     answer[i] == "Fizz" if i is divisible by 3.
#     answer[i] == "Buzz" if i is divisible by 5.
#     answer[i] == i (as a string) if none of the above conditions are true.
#
#
#     Example 1:
#
#   Input: n = 3
# Output: ["1","2","Fizz"]
# Example 2:
#
#   Input: n = 5
# Output: ["1","2","Fizz","4","Buzz"]
# Example 3:
#
#   Input: n = 15
# Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
#
#
def fizz_buzz(n)
  return [] if n.zero?

  answer = []
  1.upto(n) do |num|
    if (num % 3).zero? && (num % 5).zero?
      answer.push('FizzBuzz')
    elsif (num % 3).zero?
      answer.push('Fizz')
    elsif (num % 5).zero?
      answer.push('Buzz')
    else
      answer.push(num.to_s)
    end
  end
  answer
end

def fizz_buzz(n)
  1.upto(n).map do |i|
    if (i % 15).zero?
      'FizzBuzz'
    elsif (i % 3).zero?
      'Fizz'
    else
      (i % 5).zero? ? 'Buzz' : i.to_s
    end
  end
end

def fizz_buzz(n)
  1.upto(n).map do |i|
    if (i % 3).zero?
      if (i % 5).zero?
        'FizzBuzz'
      else
        'Fizz'
      end
    elsif (i % 5).zero?
      'Buzz'
    else
      i.to_s
    end
  end
end

puts fizz_buzz(15)
