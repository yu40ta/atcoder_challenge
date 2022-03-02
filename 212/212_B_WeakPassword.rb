passwd = gets.chomp.chars.map(&:to_i)

if passwd.count(passwd[0]) == 4
  puts "Weak"
elsif (passwd[0] + 1) % 10 == passwd[1] && (passwd[1] + 1) % 10 == passwd[2] && (passwd[2] + 1) % 10 == passwd[3]
  puts "Weak"
else
  puts "Strong"
end
