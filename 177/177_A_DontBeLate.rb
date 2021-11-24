meter_distance, after_point, speed_per_minute = gets.split.map(&:to_f)
puts meter_distance / speed_per_minute <= after_point ? "Yes" : "No"