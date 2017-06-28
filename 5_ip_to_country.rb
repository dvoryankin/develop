list = File.new('IpToCountry.csv')

addr = ARGV[0].split('.').map{ |element| element.to_i }

code = addr[3] + (addr[2] * 256) + (addr[1] * 256 * 256) + (addr[0] * 256 *256 *256)

list.each do |line|

  if line.include?('#')
    next
  end

  ip = line.split(',').map { |el| el.gsub(/"/, '') }

  if code > ip[0].to_i && code < ip[1].to_i
    puts ip[4]
    break
  end
end

list.close
