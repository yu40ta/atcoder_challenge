# 標準入力
n, x = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

# xと一致する数値を配列から削除
array.delete(x)
# 空白を追加して出力
puts array.join(" ")