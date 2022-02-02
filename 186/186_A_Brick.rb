load_capacity, brick_weight = gets.split.map(&:to_i)

# 小数点は切り上げて整数を出力
puts load_capacity / brick_weight