arr = [1,2,3,1,3,4,5,6,1,6,6,6,6]

hash = {}

# hash = {1: 2, 2:1, 3:2 }

arr.each do |e|
  key = e
  if hash.include?(e)
    hash[key] += 1
  else
    hash[key] = 1
  end
end

hash.invert.max.last