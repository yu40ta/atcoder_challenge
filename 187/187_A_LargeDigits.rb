a, b = gets.split.map(&:to_i)
ans = [a.digits.sum, b.digits.sum].max
puts ans