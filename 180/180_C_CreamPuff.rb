require "prime"

def divisors(num)
  # ex 12
  # 12.prime_divison => [[2, 2],[3, 1]]
  # arr = [1]
  # p = [2, 3]
  # e = [2, 1]
  num.prime_division.inject([1]) do |ary, (p, e)|
    # loop:1
    # (0..2).map{ |0..2| 2 ** 0..2 } => [1, 2, 4]
    # [1, 2, 4].product([ary]) => [[1, 1], [2, 1], [4, 1]]
    # [[1, 1], [2, 1], [4, 1]].map{ |a, b| a * b } => [1, 2, 4]
    # loop:2
    # (0..1).map{ |0..1| 3 ** 0..1 } => [1, 3]
    # [1, 3].product([ary]) => [[1, 1], [3, 1]]
    # [[1, 1], [3, 1]] と [[1, 1], [2, 1], [4, 1]] の組み合わせ
    # [[1, [1, 1]], [1, [2, 1]], [1, [4, 1]], [3, [1, 1]], [3, [2, 1]], [3, [4, 1]]]
    # [[1, 1], [3, 1]].map{ |a, b| a * b } => [1, 2, 4]
    # [1, 2, 4, 3, 6, 12].sort => [1, 2, 3, 4, 6, 12]
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end
 
cream_puff_piece = gets.to_i
puts divisors(cream_puff_piece)

# [1, [[1, 1], [2, 1], [4, 1]]].product(ary)
# [3, [[1, 1], [2, 1], [4, 1]]].product(ary)