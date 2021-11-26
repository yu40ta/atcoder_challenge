num = gets.to_i

count = 0
num.times do
  d1, d2 = gets.split.map(&:to_i)
  d1 == d2 ? count += 1 : count = 0
  break if count >= 3
end

puts count >= 3 ? "Yes" : "No"