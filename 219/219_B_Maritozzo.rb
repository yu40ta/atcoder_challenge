str_arr = []

3.times do
  str_arr << gets.chomp
end
join_order = gets.chomp.split("").map(&:to_i)

join_str = []
join_order.each do |i|
  join_str << str_arr[i-1]
end

puts join_str.join("")
