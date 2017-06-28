digits = [[' _ ', '   ', ' _ ', ' _ ', '   ', ' _ ', ' _ ', ' _ ', ' _ ', ' _ '],
          ['| |', '  |', ' _|', ' _|', '|_|', '|_ ', '|_ ', '  |', '|_|', '|_|'],
          ['|_|', '  |', '|_ ', ' _|', '  |', ' _|', '|_|', '  |', '|_|', ' _|']]

numbers = ARGV[0].split('').map{ |element| element.to_i }

3.times do |string|
  numbers.each do |num|
    print digits[string][num]
  end
  puts
end
