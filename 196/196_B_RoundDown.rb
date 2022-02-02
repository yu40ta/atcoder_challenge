# 標準入力の取得
# 浮動小数点以下を切り捨て、整数化する
require "bigdecimal"
x = BigDecimal(gets.to_s)
x = BigDecimal(x).floor
puts x
