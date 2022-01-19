num_x, num_y = gets.split(".").map(&:to_i)

case num_y
when 0 .. 2
  puts "#{num_x}-"
when 3 .. 6
  puts "#{num_x}"
when 7 .. 9
  puts "#{num_x}+"
end
