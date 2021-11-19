point_num, distance = gets.split.map(&:to_i)
ans = 0

point_num.times do
  x, y = gets.split.map(&:to_i)
  ans += 1 if ((x ** 2) + (y ** 2))**(1/2.0) <= distance
end

puts ans