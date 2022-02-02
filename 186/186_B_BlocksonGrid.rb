height, width = gets.split.map(&:to_i)
grid_block_count = height.times.map { gets.split.map(&:to_i) }

# 二重配列をフラット化
grid_flatten = grid_block_count.flatten

# 最小値との差分の合計値を diff_count に代入
diff_count = []
grid_flatten.each do |x|
  diff_count << x - grid_flatten.min
end

puts diff_count.sum