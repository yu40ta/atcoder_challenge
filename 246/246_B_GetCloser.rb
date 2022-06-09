# 標準入力
x, y = gets.chomp.split.map(&:to_i)

# 2 点間の距離 dist を平方根で求める
# 公式: sqrt = ((x1-x2)^2 + (y1-y2)^2) に当てはめると
dist = Math.sqrt(x**2 + y**2)

# 答えの出力
# 座標は x/dist, y/dist で求められる
puts "#{x / dist} #{y / dist}"
