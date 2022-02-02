# 標準入力
magic_type, min_chant_speed, min_damage = gets.split.map(&:to_i)
array = magic_type.times.map { gets.split.map(&:to_i) }

# ダメージ判定用の空の配列を作る
damage_judge = []

# ダメージ判定
array.each do |magic_chant_speed, magic_damage|
  if min_chant_speed <= magic_chant_speed || min_damage >= magic_damage
    damage_judge << "No"
  else
    damage_judge << "Yes"
  end
end
puts damage_judge.include?("Yes") ? "Yes" : "No"