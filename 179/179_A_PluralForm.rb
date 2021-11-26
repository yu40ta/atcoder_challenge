string = gets.chomp.to_s
puts string.end_with?("s") ? string + "es" : string + "s"