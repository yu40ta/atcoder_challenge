len = gets.to_i
num_arr = gets.split.map(&:to_i).sort.uniq

ans = 0

2001.times do |i|
  if num_arr.count(i) == 0
    ans = i
    break
  end
end

puts ans
