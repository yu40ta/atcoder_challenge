full_battery, visit_cafe_count, return_home_time = gets.split.map(&:to_i)
stay_time = visit_cafe_count.times.map { gets.split.map(&:to_i) }
now_time = 0
now_battery = full_battery

stay_time.each do |in_time, out_time|
  now_battery -= in_time - now_time
  if now_battery <= 0
    puts "No"
    exit
  end
  now_battery += out_time - in_time
  now_battery = [now_battery, full_battery].min
  now_time = out_time
end

puts now_battery - (return_home_time - stay_time.last[1]) > 0 ? "Yes" : "No"