slot = gets.chomp.chars
puts slot[0] == slot[1] && slot[0] == slot[2] ? "Won" : "Lost"