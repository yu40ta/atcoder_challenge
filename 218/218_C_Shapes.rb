s_grid, t_grid = [], []

num = gets.to_i
# 5
s_grid = num.times.map { gets.chomp.chars }
# .....
# ..#..
# .###.
# .....
# .....
# s_grid.each { |s| pp s }
t_grid = num.times.map { gets.chomp.chars }
# .....
# .....
# ....#
# ...##
# ....#
# t_grid.each { |t| pp t }

def cut(arr)
  # 上下左右全パターン分のループ
  4.times do
    # 先頭の要素における文字列が全て "." の要素を取り除いた配列を生成
    arr.shift while arr[0].all?(".")
    # 回転の再現 (縦横全てのパターンで上記を実行するための転置)
    arr = arr.transpose.reverse
  end
  return arr
end

s_grid = cut(s_grid)
t_grid = cut(t_grid)

ans = "No"
# 上下左右全パターン分のループ
4.times do
  pp t_grid
  ans = "Yes" if s_grid == t_grid
  t_grid = t_grid.transpose.reverse
  pp t_grid
end

puts ans
