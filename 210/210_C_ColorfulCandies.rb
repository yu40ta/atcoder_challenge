N, K = gets.chomp.split.map(&:to_i).freeze
CANDIES = gets.chomp.split.map(&:to_i).freeze

# ハッシュ化して重複カウント
candies_hash = CANDIES[0..(K - 1)].tally
# 0 番目の要素から K 個もらったキャンディの色の種類数
ans = candies_hash.length

# より多くの色のキャンディをもらえる場合の演算
# 要素の先頭・末尾の位置をスライドさせた分の変化量を加減算
(1..(N - K)).each do |i|

  s = CANDIES[i - 1]
  # to_i は nil エラー回避
  candies_hash[s] = candies_hash[s].to_i - 1
  candies_hash.delete(s) if candies_hash[s] == 0

  e = CANDIES[i + K - 1]
  candies_hash[e] = candies_hash[e].to_i + 1

  # 色の種類数がより多い区間を答えとする
  ans = [ans, candies_hash.length].max
end

puts ans
