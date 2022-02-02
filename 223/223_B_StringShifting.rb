# 前提
# 右シフト 2 回 = 左シフト 1 回
# abc->cab->bca = abc->bca
# つまり、右シフトを n 回とすると、左シフトは n-1 回となる

# 標準入力
str = gets.chomp.chars

# ローテーションする回数を算出
rotation_num = str.size

# ローテーションした文字列を格納する配列を初期化
str_arr = []

# 繰り返し処理
rotation_num.times do |i|
  # 配列内の文字列を i 回分左シフトし、連結した文字列を配列に格納
  # i 回分左シフト = i 番目の文字を先頭に移動し、i 番目より前の要素は末尾に移動
  rotate_str = str.rotate(i).join
  str_arr << rotate_str
end

# 配列内のソート最小値と最大値をそれぞれ出力
puts str_arr.sort.min
puts str_arr.sort.max
