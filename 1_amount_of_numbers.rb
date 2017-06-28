a = [[4, 19], nil, [32, 41, 41], 65, [55], 55, [55, 55]]
b = [234, 0, nil, 21, [54], 0, [0, 0, 0, 0]]

c = (a + b).flatten.compact!

hash = c.inject(Hash.new(0)) do |hash, element|
  hash[element] += 1
  hash
end
puts hash
