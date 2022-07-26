n = gets.to_i
persons = []
n.times do
  persons << gets.chomp.split.map(&:to_i)
end

s = gets.chomp
s.split("").each_with_index do |dir, idx|
  persons[idx] << dir
end

# y 座標が同じ人をグループ化
grouped_persons = persons.group_by { |e| e[1] }

# 衝突判定
collision_detection = false

grouped_persons.each_value do |arr|
  # 隣接 idx のみを比較したいのであらかじめソートしておく
  arr.sort!
  arr.each_with_index do |ele, idx|
    next if idx == 0
    if arr[idx - 1][2] == "R" && ele[2] == "L"
      collision_detection = true
    end
  end
end

puts collision_detection ? "Yes" : "No"
