# 標準入力の取得
a, b = gets.chomp.split(" ").map(&:to_i)
c, d = gets.chomp.split(" ").map(&:to_i)

# 下記条件に基づき x, y の整数を決定
# -100 =< a =< b =< 100
# -100 =< c =< d =< 100
# a =< x =< b
# c =< y =< d
# x - y の最大値を求める
x = b
y = c
puts x - y
