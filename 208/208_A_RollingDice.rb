a, b = gets.chomp.split.map(&:to_i)
puts (a..6 * a) == b ? "Yes" : "No"
