str, num = gets.split.map(&:to_s)
str_arr = str.chars

perm_arr = []
perm_arr = str_arr.permutation(str.size).map {|s| s.join }.uniq.sort
puts perm_arr[num.to_i - 1]
