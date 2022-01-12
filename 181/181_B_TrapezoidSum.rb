num = gets.to_i

blackboard_num = []
num.times do
  a, b = gets.split.map(&:to_i)
  blackboard_num << (a..b).sum
end

puts blackboard_num.sum

# TLE
# blackboard_num = []
# arr.each do |x|
#   blackboard_num << [*x[0]..x[1]].sum
# end
# puts blackboard_num.sum