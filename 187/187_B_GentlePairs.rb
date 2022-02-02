num = gets.to_i
arr = num.times.map { gets.split.map(&:to_i) }

# 配列からサイズ n の組み合わせ(二重配列)を生成
# 2点の傾き a は y2-y1 / x2-x1 で求める
# -1 <= a <= 1 なので、分子 y2-y1 が分母 x2-x1 よりも小さければ条件を満たす
# 負の整数を比較対象から省くために絶対値に変換して比較する
# ex: y2-y1=50, x2-x1=-100 -> 50/100 = 1/2 -> true
# ex: y2-y1=-100, x2-x1=50 -> 100/50 = 2 -> false
puts arr.combination(2).count{ |(x1,y1),(x2,y2)| (y2-y1).abs <= (x2-x1).abs}