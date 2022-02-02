a_team_point, b_team_point = gets.split.map(&:to_i)
game = a_team_point, b_team_point
puts game.min + 3 > game.max ? "Yes" : "No"