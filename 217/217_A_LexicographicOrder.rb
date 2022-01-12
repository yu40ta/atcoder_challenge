def check_order(str1, str2)
  puts str1 <= str2 ? "Yes" : "No"
end

string, text = gets.split.map(&:to_s)
check_order(string, text)
