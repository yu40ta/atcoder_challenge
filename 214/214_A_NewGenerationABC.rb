num = gets.to_i

if num < 126
  puts 4
elsif num >= 126 && num < 212
  puts 6
else
  puts 8
end
