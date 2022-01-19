target_ball_count = gets.to_i
ans_str = ""

# 0 でないときにループ
while target_ball_count != 0
  # 2 で割り切れないとき
  if target_ball_count % 2 != 0
    target_ball_count -= 1
    pp "num: #{target_ball_count}"
    ans_str << "A"
  # 2 で割り切れるとき
  else
    target_ball_count /= 2
    pp "num: #{target_ball_count}"
    ans_str << "B"
  end
  pp "ans: #{ans_str}"
end

# 
puts ans_str.reverse
