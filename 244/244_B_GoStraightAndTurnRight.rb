# 標準入力
N = gets.to_i
T = gets.chars

# 座標の定義
x, y = 0, 0

# 移動量の定義
dest_x, dest_y = 1, 0

# 座標移動
T.each do |str|
  if str == "S"
    x, y = x + dest_x, y + dest_y
  else
    dest_x, dest_y = dest_y, -dest_x
  end
end

# 答えの出力
puts "#{x} #{y}"
