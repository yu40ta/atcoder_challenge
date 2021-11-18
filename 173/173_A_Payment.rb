price = gets.to_i

while price >= 0
  price -= 1000
end

change = price.abs
puts change