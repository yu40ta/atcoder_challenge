# 標準入力
new_order = gets.chomp.chars
people = gets.to_i

# ハッシュの初期化
people_hash = {}
people.times do
  name = gets.chomp
  # name を new_order の idx と対応させる
  order_code = name.split("").map { |n| new_order.index(n) }
  # hash として格納
  people_hash.store(name, order_code)
end

# ソート
sorted = people_hash.sort_by { |_, v| v }

# 解答
puts sorted.map { |k, _| k }.join("\n")
