num = gets.to_i
coordinates = num.times.map { gets.split.map(&:to_i) }
x, y = coordinates.transpose

# [[x], [y]]
# [[0, 0, 0, 1], [1, 2, 3, 1]]
# x => [0, 0, 0, 1]
# y => [1, 2, 3, 1]

# 3 点の x 座標が全て同一である場合
x_match = x.group_by(&:itself).map { |key, value| [key, value.count] }.to_h
x_match.values.each do |a|
  if a == 3
    puts "Yes"
    exit
  end
end

# 3 点の y 座標が全て同一である場合
y_match = y.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h
y_match.values.each do |b|
  if b == 3
    puts "Yes"
    exit
  end
end

# 全パターンの列挙
coordinates.combination(3) do |(x1, y1), (x2, y2), (x3, y3)|
# 3 点の座標が同直線上にあるかどうかを判断するためには
# 直線 AB と 直線 AC の傾きが同じであればいいので
# それぞれ (b2 - b1) / (a2 - a1) に当てはめる
# AB = AC
# (y2 - y1) / (x2 - x1) = (y3 - y1) / (x3 - x1)
# (x3 - x1) * (y2 - y1) = (x2 - x1) * (y3 - y1)
  if (x3 - x1) * (y2 - y1) == (x2 - x1) * (y3 - y1)
    puts "Yes"
    exit
  end
end

puts "No"