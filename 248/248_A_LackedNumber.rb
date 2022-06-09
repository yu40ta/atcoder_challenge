S = gets.chomp

(0..9).each do |num|
  unless S.include?(num.to_s)
    puts num
  end
end
