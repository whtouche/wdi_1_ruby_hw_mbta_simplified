INTERSECTION = 'Park Street'
LINES = {
  red: ['Alewife', 'Davis', 'Porter', 'Harvard', 'Central', 'Kendall/MIT', 'Park Street', 'South Station'],
  green: ['Haymarket', 'Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley'],
  orange: ['North Station', 'Haymarket', 'Park Street', 'State Street', 'Downtown Crossing', 'Chinatown', 'Tufts Medical Center']
}

puts 'Which line are you getting on?'
start_line = gets.chomp.to_sym

puts 'Which station are you getting on?'
start_station = gets.chomp

puts 'Which line are you getting off?'
end_line = gets.chomp.to_sym

puts 'Which station are you getting off?'
end_station = gets.chomp

if start_line == end_line
  start_station_index = LINES[start_line].index(start_station)
  end_station_index = LINES[end_line].index(end_station)

  total_distance = (start_station_index - end_station_index).abs
else
  start_station_index = LINES[start_line].index(start_station)
  intersection_index_on_start_line = LINES[start_line].index(INTERSECTION)
  first_leg_distance = (start_station_index - intersection_index_on_start_line).abs

  end_station_index = LINES[end_line].index(end_station)
  intersection_index_on_end_line = LINES[end_line].index(INTERSECTION)
  second_leg_distance = (end_station_index - intersection_index_on_end_line).abs

  total_distance = first_leg_distance + second_leg_distance
end

puts "The distance is: #{total_distance}"
