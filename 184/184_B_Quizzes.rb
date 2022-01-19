question, point = gets.split.map(&:to_i)
str = gets.chomp.chars

str.each do |judge|
  if judge == "o"
    point += 1
  else
    point -= 1
    point = [0, point].max
  end
end

puts point