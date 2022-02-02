num = gets.to_i
player_rate = gets.split.map(&:to_i)
size = player_rate.size

first_block = player_rate[0...size/2]
second_block = player_rate[size/2...size]

semifinalist_rate = [first_block.max, second_block.max].min
semifinalist_index = player_rate.index(semifinalist_rate) + 1
puts semifinalist_index

# ---
# TLE
# ---
# num = gets.to_i
# player_rate = gets.split.map(&:to_i)
# tournament_table = player_rate.each_slice(2).to_a
#
# game_result = []
# tournament_table.each do |game|
#   game_result << game.max
# end
#
# while game_result.size != 2
#   tournament_table = game_result.each_slice(2).to_a
#   game_result = []
#   tournament_table.each do |game|
#     game_result << game.max
#   end
# end
#
# puts player_rate.index(game_result.min) + 1
