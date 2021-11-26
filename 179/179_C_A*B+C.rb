num = gets.to_i
ans = 0

# 正の整数は 0-を含まないため 1 以上の整数で考える
# a が固定のとき、b は (n - 1) / 2
# つまり n を超えない範囲で決まる
# また c は a と b の値によって固定されるので
# (n - ) / 2 だけを求めればいい
(1..num).each do |x|
  ans += (num - 1) / x
end

puts ans

# ex: 10
# a=1, b=1, c=9
# a=1, b=2, c=8
# a=1, b=3, c=7
# a=1, b=4, c=6
# a=1, b=5, c=5
# a=1, b=6, c=4
# a=1, b=7, c=3
# a=1, b=8, c=2
# a=1, b=9, c=1
# a=2, b=1, C=8
# a=2, b=2, C=6
# a=2, b=3, C=4
# a=2, b=4, C=2
# a=3, b=1, c=7
# a=3, b=2, c=4
# a=3, b=3, c=1
# a=4, b=1, c=6
# a=4, b=2, c=2
# a=5, b=1, c=5
# a=6, b=1, c=4
# a=7, b=1, c=3
# a=8, b=1, c=2
# a=9, b=1, c=1

# a = 1 のとき、b は 9 通り
# a = 2 のとき、b は 4 通り
# a = 3 のとき、b は 3 通り
# a = 4 のとき、b は 2 通り
# a = 5,6,7,8,9 のとき、b は 1 通り