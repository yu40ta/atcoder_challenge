a, b = gets.split.map(&:to_i)
MAGNITUDE = 32
magnitude_diff = a - b
ans = MAGNITUDE ** magnitude_diff

puts ans
