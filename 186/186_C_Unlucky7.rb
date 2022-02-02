num = gets.to_i
count = 0

# 1 〜 num の範囲の数値を 10 進数または 8 進数(の文字列)に変換した時に
# "7" を含まない(false な)ものがあれば、"7" を含まない数としてカウントする
for i in 1..num
  unless i.inspect(10).include?("7") || i.inspect(8).include?("7")
    count += 1
  end
end

puts count