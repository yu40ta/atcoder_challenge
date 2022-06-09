slimes_count, target_count, multiplier = gets.split.map(&:to_i)

count = 0

while target_count > slimes_count
  slimes_count = slimes_count * multiplier
  count += 1
end

puts count
