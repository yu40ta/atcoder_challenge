n, m = gets.split.map(&:to_i)

# 重複排除したソート済み配列
arr_a = gets.split.map(&:to_i).uniq.sort
arr_b = gets.split.map(&:to_i).uniq.sort

# 配列 A を全探索し、配列 B を最適化する
if arr_a.min >= arr_b.max
  puts (arr_a.min - arr_b.max).abs
elsif arr_a.max <= arr_b.min
  puts (arr_a.max - arr_b.min).abs
else
  ans = 10**9+7
  arr_a.each do |a|
    # ソート済み配列 B をブロック内で評価判定する
    # ソート済み配列 A の要素 a とソート済み配列 B の要素 b を条件判定し、該当する要素 b の index を返す
    idx = arr_b.bsearch_index { |b| b > a }
    # 要素が見つからない場合の回避処理
    next if idx.nil?
    # 配列内の要素同士を比較した際に、要素間の差が最小になる値を代入
    # ループごとに答えが変わらないように ans も比較対象に含める
    ans = [ans, (a - arr_b[idx]).abs, (a - arr_b[idx-1]).abs].min
  end
end

puts ans
