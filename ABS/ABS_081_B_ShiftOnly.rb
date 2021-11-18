num = gets.to_i
arr = gets.split.map(&:to_i)
ans = 0

while arr.all?(&:even?) do
  arr.map! {|n| n / 2}
  ans += 1
end

puts ans