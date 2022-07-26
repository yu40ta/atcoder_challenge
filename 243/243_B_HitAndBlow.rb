n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

# a_count の演算
a_count = 0
n.times do |i|
  a_count += 1 if a[i] == b[i]
end

# b_count の演算
b_count = (a & b).count - a_count

puts a_count
puts b_count
