# s = start, g = goal
sx, sy, gx, gy = gets.split.map(&:to_f)

# ex: (1, 1),(7, 2)
# (1, 1),(x, 0) における
# y の増加量 = 0 - 1 = -1
# (x, 0),(7, 2) における
# y の増加量 = 2 - 0 = 2
# 内分比は 1:2
# 内分点の座標を求める公式は x = na + mb / m + n
# つまり x = (gy*sx) + (sy*gx) / sy + gy
# x = (2*1) + (1*7) / 1 + 2
# x = 10 / 3
# x = 3.333...

x = ((gy * sx) + (sy * gx)) / (sy + gy)
puts x

