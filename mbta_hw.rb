# Origin line
# Origin stop
# Destination line
# Destination stop

red_line = ['Alewife', 'Davis', 'Porter', 'Harvard', 'Central', 'Kendall/MIT', 'Park Street', 'South Station']
green_line = ['Haymarket', 'Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley']
orange_line = ['North Station', 'Haymarket', 'Park Street', 'State Street', 'Downtown Crossing', 'Chinatown', 'Tufts Medical Center']

# This is a hash containing three arrays representing each line
mbta = {red: red_line, orange: orange_line, green: green_line}

park = 'Park Street'

origin_line =

origin_stop =

destination_line =

destination_stop =

=begin

if origin_line == destination_line
  total_stops = (mbta[origin_line].index(origin_stop) - mbta[destination_line].index(destination_stop)).abs
  puts "Total number of stops: #{first_line_stops}"
end

# move this above


if origin_line != destination_line
  first_line_stops = (mbta[origin_line].index(origin_stop) - mbta[origin_line].index(park)).abs
  second_line_stops = (mbta[destination_line].index(park) - mbta[destination_line].index(destination_stop)).abs
  total_stops = first_line_stops + second_line_stops
  puts "Total number of stops: #{total_stops}"
end

# If line is the same
  # then one formula (arithmetic on indexes)
# If line is different
  # then calculate origin to park PLUS park to destination


# same line or transfer?
# subtract indexes for number of stops

# .find_index('STRING') # Will find the index

=end
