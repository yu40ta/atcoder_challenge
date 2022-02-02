non_fat_milk_solid, milk_fat = gets.chomp.split(" ").map(&:to_i)
milk_solid = non_fat_milk_solid + milk_fat

if milk_solid >= 15 && milk_fat >= 8
  puts 1 #アイスクリーム
elsif milk_solid >= 10 && milk_fat >= 3
  puts 2 #アイスミルク
elsif milk_solid >= 3
  puts 3 #ラクトアイス
else
  puts 4 #氷菓
end