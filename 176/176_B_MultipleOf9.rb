num = gets.to_i.digits(10).sum
puts num % 9 == 0 ? "Yes" : "No"
