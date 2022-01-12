sequence = gets.split.map(&:to_i)

ALPHABETS = [*"a".."z"]
dictionary = Hash.new

ALPHABETS.each.with_index do |str, i|
  dictionary.merge!(i+1 => str)
end

output_txt = []
sequence.each do |i|
  output_txt << dictionary.fetch(i)
end

puts output_txt.join
