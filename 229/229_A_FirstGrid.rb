square = readlines.map(&:chomp)
if square[0] == "##" && square[1].include?("#")
  puts "Yes"
elsif square[0].include?("#") && square[1] == "##"
  puts "Yes"
else
  puts "No"
end
