blue_ball, add_blue_ball, add_red_ball, goal = gets.split.map(&:to_i)

ans = 0
red_ball = 0

if add_blue_ball >= add_red_ball * goal
  puts -1
  exit
end

until blue_ball <= red_ball * goal
  blue_ball += add_blue_ball
  red_ball += add_red_ball
  ans += 1
end

puts ans
