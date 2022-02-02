num_of_student, fail_point = gets.split.map(&:to_i)

count = 0
student_point_arr = gets.split.map(&:to_i)
student_point_arr.each do |x|
  if x < fail_point
    count += 1
  end
end

puts count