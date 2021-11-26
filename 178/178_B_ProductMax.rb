a, b, c, d = gets.split.map(&:to_i)
ans = [(a * c), (a * d), (b * c), (b * d)]

puts ans.max