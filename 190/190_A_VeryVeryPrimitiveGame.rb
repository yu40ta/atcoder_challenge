# 標準入力
Takahashi_candie, Aoki_candie, move_order = gets.split.map(&:to_i)

# 高橋君が勝つパターンのみを洗い出し、それ以外は青木君の勝ちとして判定する
if Takahashi_candie >= Aoki_candie && move_order == 1 || Takahashi_candie > Aoki_candie && move_order == 0
  puts "Takahashi"
else
  puts "Aoki"
end