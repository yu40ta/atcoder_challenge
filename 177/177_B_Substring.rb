str = gets.chomp.to_s
substr = gets.chomp.to_s

# 文字列の長さを取得
str_num = str.size
substr_num = substr.size

# 置き換える最大回数の定義
ans = substr_num

# 0 ~ 各文字列の長さの差だけループ
(0..(str_num - substr_num)).each do |i|
  # ループごとの置き換え回数を定義
  count = 0
  # 0 ~ 置き換え文字列の長さ分ループ
  # 親 each と組み合わせることで各文字列の1文字ごとの比較全探索を表現
  (1..substr_num).each do |j|
    count += 1 if str[i + j - 1] != substr[j - 1]
  end
  # 置き換え回数がより小さい方を答えとする
  ans = [ans, count].min
end

puts ans

# ex:
# str = codeforces
# substr = atcoder
# str_num = 10
# substr_num = 7

# j = 1,2,3,4,5,6,7
# loop:0 (i = 0)
# i + j - 1 = 0,1,2,3,4,5,6
  # str[0+1-1] != substr[1-1] => c != a => true
  # str[0+2-1] != substr[2-1] => o != t => true
  # str[0+3-1] != substr[3-1] => d != c => true
  # str[0+4-1] != substr[4-1] => e != o => true
  # str[0+5-1] != substr[5-1] => f != d => true
  # str[0+6-1] != substr[6-1] => o != e => true
  # str[0+7-1] != substr[7-1] => r != r => false
# => count = 6

# loop:1 (i = 1)
# i + j - 1  = 1,2,3,4,5,6,7
  # str[1+1-1] != substr[1-1] => o != a => true
  # str[1+2-1] != substr[2-1] => d != t => true
  # str[1+3-1] != substr[3-1] => e != c => true
  # str[1+4-1] != substr[4-1] => f != o => true
  # str[1+5-1] != substr[5-1] => o != d => true
  # str[1+6-1] != substr[6-1] => r != e => true
  # str[1+7-1] != substr[7-1] => c != r => true
# => count = 7

# loop:2 (i = 2)
# i + j - 1 = 2,3,4,5,6,7,8
  # str[2+1-1] != substr[1-1] => d != a => true
  # str[2+2-1] != substr[2-1] => e != t => true
  # str[2+3-1] != substr[3-1] => f != c => true
  # str[2+4-1] != substr[4-1] => o != o => true
  # str[2+5-1] != substr[5-1] => r != d => true
  # str[2+6-1] != substr[6-1] => c != e => true
  # str[2+7-1] != substr[7-1] => e != r => true
# => count = 7

# loop:3 (i = 3)
# i + j - 1 = 3,4,5,6,7,8,9
  # str[3+1-1] != substr[1-1] => e != a => true
  # str[3+2-1] != substr[2-1] => f != t => true
  # str[3+3-1] != substr[3-1] => o != c => true
  # str[3+4-1] != substr[4-1] => r != o => true
  # str[3+5-1] != substr[5-1] => c != d => true
  # str[3+6-1] != substr[6-1] => e != e => false
  # str[3+7-1] != substr[7-1] => s != r => true
# => count = 6