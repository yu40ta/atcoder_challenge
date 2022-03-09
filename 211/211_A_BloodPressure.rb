bp_a, bp_b = gets.split.map(&:to_i)
puts sprintf("%.7f", (((bp_a - bp_b).to_f / 3) + bp_b))
