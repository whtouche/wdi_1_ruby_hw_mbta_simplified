INTERSECTION = 'Park Street'
LINES = {
  red: ['Alewife', 'Davis', 'Porter', 'Harvard', 'Central', 'Kendall/MIT', 'Park Street', 'South Station'],
  green: ['Haymarket', 'Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley'],
  orange: ['North Station', 'Haymarket', 'Park Street', 'State Street', 'Downtown Crossing', 'Chinatown', 'Tufts Medical Center']
}

def prompt(text)
  puts text
  gets.chomp
end

def distance_between_stations(line, first_station, second_station)
  first_station_index = LINES[line].index(first_station)
  second_station_index = LINES[line].index(second_station)
  (first_station_index - second_station_index).abs
end

def distance_from_intersection(line, station)
  distance_between_stations(line, station, INTERSECTION)
end

def trip_distance(start_line, start_station, end_line, end_station)
  if start_line == end_line
    distance_between_stations(start_line, start_station, end_station)
  else
    first_leg_distance = distance_from_intersection(start_line, start_station)
    second_leg_distance = distance_from_intersection(end_line, end_station)

    first_leg_distance + second_leg_distance
  end
end

start_line = prompt('Which line are you getting on?').to_sym
start_station = prompt('Which station are you getting on?')
end_line = prompt('Which line are you getting off?').to_sym
end_station = prompt('Which station are you getting off?')

distance = trip_distance(start_line, start_station, end_line, end_station)
puts "The distance is: #{distance}"
