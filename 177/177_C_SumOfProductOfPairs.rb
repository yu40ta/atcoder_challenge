num = gets.to_i
arr = gets.split.map(&:to_i)
MOD = 10**9 + 7

ans = 0

# 累積和
arr_sum = arr.sum
(num - 1).times do |i|
  arr_sum -= arr[i]
  ans += arr[i] * arr_sum
end

puts ans % MOD