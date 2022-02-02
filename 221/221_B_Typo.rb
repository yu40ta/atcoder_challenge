s = gets.chomp
t = gets.chomp

if s == t
  puts "Yes"
  exit
end

diff_arr = s.chars.zip(t.chars).each_with_index.find_all{|(x,y),i| x!=y}
if diff_arr.size != 2
  puts "No"
elsif diff_arr.size == 2 && diff_arr[0][1] == diff_arr[1][1] + 1 || diff_arr[0][1] == diff_arr[1][1] - 1
  puts (diff_arr[0][0][0] != diff_arr[1][0][0] && diff_arr[0][0][0] == diff_arr[1][0][1]) && (diff_arr[0][0][1] == diff_arr[1][0][0] && diff_arr[0][0][1] != diff_arr[1][0][1]) ? "Yes" : "No"
else
  puts "No"
end

## TODO: diff_arr をループで回すように改修
## IMPROVE:
  ## 正誤判定の場合は、正誤パターンを洗い出してから実装する
  ## 判定を簡素化できる場合は、簡素化する
  ## 誰が見ても分かりやすいコードにする
  ## B 問題までは全探索ループでもほとんど問題ない
