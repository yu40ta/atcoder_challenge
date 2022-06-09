# 標準入力
x1, y1 = gets.split.map(&:to_i)
x2, y2 = gets.split.map(&:to_i)
x3, y3 = gets.split.map(&:to_i)

# x 座標の演算
if x1 == x2
  x_ans = x3
elsif x2 == x3
  x_ans = x1
elsif x1 == x3
  x_ans = x2
end

# y 座標の演算
if y1 == y2
  y_ans = y3
elsif y1 == y3
  y_ans = y2
elsif y2 == y3
  y_ans = y1
end

# 答えの出力
puts "#{x_ans} #{y_ans}"
