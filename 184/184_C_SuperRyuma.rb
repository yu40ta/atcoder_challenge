start_x, start_y = gets.split.map(&:to_i)
goal_x, goal_y = gets.split.map(&:to_i)

step_result = 0

if [start_x, start_y] == [goal_x, goal_y]
  step_result = 0
# 移動A: a + b = c + d
elsif start_x + start_y == goal_x + goal_y
  step_result = 1
# 移動B: a - b = c - d
elsif start_x - start_y == goal_x - goal_y
  step_result = 1
# 移動C: (a - c) + (b - d) <= 3
elsif (start_x - goal_x).abs + (start_y - goal_y).abs <= 3
  step_result = 1
# A + B OR B + A
elsif (start_x + start_y + goal_x + goal_y) % 2 == 0
  step_result = 2
# A + C
elsif ((start_x + start_y) - (goal_x + goal_y)).abs <= 3
  step_result = 2
# B + C
elsif ((start_x - start_y) - (goal_x - goal_y)).abs <= 3
  step_result = 2
# C + C
elsif (start_x - goal_x).abs + (start_y - goal_y).abs <= 6
  step_result = 2
  # other
else
  step_result = 3
end

puts step_result