points = []
p = 'A'

puts 'Введите X и Y координаты центра окружности через пробел: '
center_coord = gets.chomp.split(' ').map{ |el| el.to_i }

puts 'Введите радиус окружности: '
radius = gets.chomp.to_i

puts 'Введите количество точек для рассчёта: '
n = gets.chomp.to_i

n.times do
  puts "Введите через пробел координаты X и Y точки #{p} и нажмите Enter: "
  points << gets.chomp.split(' ').map{ |el| el.to_i }
  p.next!
end

pp = points.select { |point| (point[0] - center_coord[0])**2 + (point[1] - center_coord[1])**2 <= radius**2  }

print "Точки входящие в окружность #{pp}"
