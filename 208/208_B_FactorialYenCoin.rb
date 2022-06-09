price = gets.to_i
# 1! 〜 10! 円硬貨の配列を定義
factorial_yen_coins = [1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800]
ans = 0

# 階乗した数が大きい硬貨 (10! 円) から演算したいため、reverse_each を使用
factorial_yen_coins.reverse_each do |i|
  # puts "i: #{i}"
  # price が i 以上の場合のみ
  # puts "price >= i: #{price >= i}"
  if price >= i
    # 使用する硬貨 i の枚数を ans に加算
    # puts "price / i: #{price / i}"
    ans += price / i
    # puts "ans: #{ans}"
    # 支払った額の剰余を演算
    # puts "price % i: #{price % i}"
    price = price % i
    # puts "price: #{price}"
  end
end

puts ans
