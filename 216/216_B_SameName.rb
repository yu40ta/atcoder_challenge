num_of_person = gets.to_i

names = []
num_of_person.times do |i|
  names << gets.chomp.split
end

# 配列の全要素数 - ユニークな要素
# 演算結果が 0 の場合は "同姓同名は存在しない"
# 演算結果が 1 以上の場合は "同姓同名が存在する"
puts names.count - names.uniq.count > 0 ? "Yes" : "No"
