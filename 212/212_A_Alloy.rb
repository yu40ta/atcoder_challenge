gold_weight, silver_weight = gets.split.map(&:to_i)

if gold_weight > 0 && silver_weight == 0
  puts "Gold"
elsif gold_weight == 0 && silver_weight > 0
  puts "Silver"
else
  puts "Alloy"
end
