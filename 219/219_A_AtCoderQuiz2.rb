# ランクの定義
BEGINNER = 0
INTERMEDIATE = 40
ADVANCED = 70
EXPERT = 90

# 標準入力
score = gets.to_i

# ランク判定および上位ランクまでの必要スコア出力
if score >= EXPERT
  puts "expert"
elsif score >= ADVANCED
  puts (EXPERT - score)
elsif score >= INTERMEDIATE
  puts (ADVANCED - score)
elsif score >= BEGINNER
  puts (INTERMEDIATE - score)
end
