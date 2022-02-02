# 標準入力 (頂点の数)
num = gets.to_i

# 頂点 ai,bi を結ぶ辺を配列に格納
array = []
(num - 1).times do
  array << gets.chomp.split.map(&:to_i)
end

# pp array
# pp array.flatten!
# pp array.flatten!.tally
# pp array.flatten!.tally.values
# pp array.flatten!.tally.values.include?(num-1)

# flatten!: 破壊的にフラット化した配列を出力
# tally: フラット化した配列内で重複する回数を Hash の Value としてカウント
# values: Hash の Value のみを配列として出力
# include?(num-1): 辺の数と一致するかどうかを判定
if array.flatten!.tally.values.include?(num-1)
  puts "Yes"
else
  puts "No"
end
