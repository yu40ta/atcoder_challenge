cycle_hit = ["H", "2B", "3B", "HR"]

4.times do
  result = gets.chomp
  cycle_hit.delete(result)
end

puts cycle_hit.empty? ? "Yes" : "No"
