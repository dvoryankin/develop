arr = [1, 2, 3, 4, 5, 6, 7, 13, 14, 15, 16, 54, 756, 234, 4554, 2233, 79, 9867, 65, 879]

puts 'Сколько случайных чисел вы хотите вывести?'
n = gets.to_i
n = arr.size if n > arr.size

n.times do
  x = arr.shuffle!.pop
  print "#{x} "
end

