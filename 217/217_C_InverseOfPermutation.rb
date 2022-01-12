num = gets.to_i
perm_p = gets.split.map(&:to_i)
perm_q = []

num.times do |i|
  perm_q[perm_p[i] - 1] = i + 1
end

puts perm_q
