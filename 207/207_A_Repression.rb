a, b, c = gets.split.map(&:to_i)
array = a, b, c

puts array.sort[-1] + array.sort[-2]