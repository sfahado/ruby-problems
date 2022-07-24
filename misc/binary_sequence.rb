# frozen_string_literal: true

def binary(integer)
  binary = []
  while integer.positive?
    binary << integer % 2
    integer /= 2
  end
  binary.reverse.join
end

def binary_sequence(num)
  number = binary(num)
  puts "number #{number}"
  binary = number.split('').map(&:to_s)
  size = binary.length
  count = 0
  # keep count of zeros
  lengths = []
  i = 0
  # stores binary gaps
  while i < size
    if binary[i] == '1' && (i + 1) < binary.length && binary[i + 1] == '0'
      # search first encounter of 1 and only if subsequent charactor is 0 start counting the 0's
      count += 1
      i += 1
      while binary.length > (i + 1) && binary[i + 1] == '0'
        # increment count if theres subsequent zeros
        count += 1
        i += 1
        if (i + 1) < binary.length && binary[i + 1] == '1'
          # next index within range
          break
        end
      end
      if binary.length > (i + 1) && binary[i + 1] == '1'
        # add to lengths only if ending with 1
        lengths.push(count)
        count = 0
      end
    end
    i += 1
  end
  if lengths.size.zero?
    0
  else
    lengths.min
  end
end

arr = (100..9999).to_a.sample(2)

arr.each do |a|
  puts binary_sequence(a)
end
