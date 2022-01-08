a, b = gets.split.map { |x| x.to_i.digits }
ans = "Easy"

a.zip(b).each do |x, y|
  if x + y >= 10
    ans = "Hard"
  end
end

puts ans