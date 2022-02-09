s, t = gets.split.map(&:to_i)
ans = 0

(0..s).each do |a|
  # pp "a: #{a}"
  (0..s).each do |b|
    # pp "b: #{b}"
    (0..s).each do |c|
      # pp "c: #{c}"
      # pp "a+b+c: #{a + b + c}"
      # pp "a+b+c: #{a * b * c}"
      if (a + b + c) <= s && (a * b * c) <= t
        ans += 1
      end
    end
  end
end

puts ans
