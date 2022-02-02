str = gets.chomp
ans = 3

if str[0] == str[1] && str[1] == str[2]
  ans = 1
elsif str[0] != str[1] && str[1] != str[2] && str[0] != str[2]
  ans = 6
end

puts ans

# str = gets.chomp.chars
# str_len = str.length

# str_arr = []
# str_len.times do |i|
#   rotate_str = str.rotate(i).join
#   str_arr << rotate_str
# end

# puts str_arr.uniq.count
