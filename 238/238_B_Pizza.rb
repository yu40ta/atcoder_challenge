cuts_count = gets.to_i
cuts = gets.split.map(&:to_i)

# 0° から見たピザのカット位置を格納する配列
cut_rotation = [0]
# 360° を超えないように除算
cuts_count.times do |i|
  cut_rotation << (cut_rotation[i] + cuts[i]) % 360
end

# カットされたピザの中心角を格納する配列
ans = []
# 中心角を算出するためにソート
cut_rotation.sort!.push(360)

# カットされたピザの中心角を算出
(cuts_count + 1).times do |j|
  ans << cut_rotation[j + 1] - cut_rotation[j]
end

puts ans.max
