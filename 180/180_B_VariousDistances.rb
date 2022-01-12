dimension = gets.to_i
point = gets.split.map(&:to_i)

manhattan = []
point.each do |x|
  manhattan << x.abs
end

euclid = []
point.each do |y|
  euclid << y * y
end

chebyshev = []
point.each do |z|
  chebyshev << z.abs
end

puts manhattan.inject(:+)
puts euclid.inject(:+)**(1/2.0).floor(10)
puts chebyshev.max