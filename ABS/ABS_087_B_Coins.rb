a = gets.to_i
b = gets.to_i
c = gets.to_i
X = gets.to_i

ans = 0

a_pattern = []
b_pattern = []
c_pattern = []

(0..a).each do |n|
  a_pattern << 500 * n
end

(0..b).each do |n|
  b_pattern << 100 * n
end

(0..c).each do |n|
  c_pattern << 50 * n
end

all_pattern = a_pattern.product(b_pattern, c_pattern)

all_pattern.each do |choice|
  if choice.sum == X
    ans += 1
  end
end

puts ans