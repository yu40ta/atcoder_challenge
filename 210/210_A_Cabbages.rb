n, a, x, y = gets.split.map(&:to_i)
if n > a
  puts ((x * a) + (y * (n - a)))
else
  puts x * n
end
