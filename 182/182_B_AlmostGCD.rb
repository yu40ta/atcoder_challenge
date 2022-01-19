n = gets.to_i
arr = gets.split.map(&:to_i)

# 2 〜 arr.max までの値のみ考慮
# 上記は arr.max_by でもOK
# max_by メソッド内に count メソッドを入れて
# k で割り切れるものの数が最も多かった値を出力する
puts (2..arr.max).max_by {|k|
  arr.count {|c| c % k == 0 }
}
