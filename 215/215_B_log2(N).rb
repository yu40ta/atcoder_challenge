num = gets.to_i
ans = 0

while num > 1
  num /= 2
  # pp "num: #{num}"
  ans += 1
  # pp "ans: #{ans}"
end

puts ans
