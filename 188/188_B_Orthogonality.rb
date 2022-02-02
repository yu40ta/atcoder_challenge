num = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
num_arr = a, b

inner_product = []
num_arr.transpose.each do |a, b|
  inner_product << a * b
end

inner_product.sum == 0 ? "Yes" : "No"