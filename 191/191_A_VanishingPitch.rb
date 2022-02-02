# 標準入力
v, t, s, d = gets.split.map(&:to_i)

# 条件式
# D < VT || D > VS
puts d < v * t || d > v * s ? "Yes" : "No"

# ball_speed, vanish_start_sec, vanish_end_sec, hitable_meter = gets.split.map(&:to_i)
# hitable_sec = hitable_meter / ball_speed
# p hitable_sec < vanish_start_sec || vanish_end_sec < hitable_sec ? "yes" : "no"
