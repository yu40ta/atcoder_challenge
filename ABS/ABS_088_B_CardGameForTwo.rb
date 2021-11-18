num = gets.to_i
card = gets.split.map(&:to_i).sort

alice_point = []
bob_point = []

until card.size == 0
  if card.size != 0
    alice_point << card.pop
  end
  if card.size != 0
    bob_point << card.pop
  end
end

puts alice_point.sum - bob_point.sum