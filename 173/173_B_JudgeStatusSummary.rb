num = gets.to_i
str_arr = []

num.times do
  str_arr << gets.chomp.to_s
end

puts <<"EOS"
AC x #{str_arr.count {|s| s == "AC"}}
WA x #{str_arr.count {|s| s == "WA"}}
TLE x #{str_arr.count {|s| s == "TLE"}}
RE x #{str_arr.count {|s| s == "RE"}}
EOS