num, lower_limit, upper_limit = gets.split.map(&:to_i)

ans = []
(0..num).each do |x|
  if lower_limit <= x.digits.sum && x.digits.sum <= upper_limit
    ans << x
  end
end

puts ans.sum