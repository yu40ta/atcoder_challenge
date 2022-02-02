require "set"

num = gets.to_i
set = Set.new
num.times do
  set << gets.chomp
end

ans = "satisfiable"

set.each do |x|
  if set.include?("!"+x)
    ans = x
    break
  end
end
 
puts ans