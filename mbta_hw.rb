# Origin line
# Origin stop
# Destination line
# Destination stop

# This is a hash containing three arrays representing each line
red_line = ['Alewife', 'Davis', 'Porter', 'Harvard', 'Central', 'Kendall/MIT', 'Park Street', 'South Station']
green_line = ['Haymarket', 'Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley']
orange_line = ['North Station', 'Haymarket', 'Park Street', 'State Street', 'Downtown Crossing', 'Chinatown', 'Tufts Medical Center']
mbta = {
  red: red_line,
  green: green_line,
  orange: orange_line
}
# puts mbta
# puts mbta[:red][0] # prints 'Alewife'

origin_line = mbta[:red]
# puts origin_line
origin_stop = mbta[:red][1]
# origin_stop
destination_line = mbta[:red]
# puts destination_line
destination_stop = mbta[:red][7]
# puts destination_stop

if origin_line == destination_line
  total_stops =

# If line is the same
  # then one formula (arithmetic on indexes)
# If line is different
  # then calculate origin to park PLUS park to destination
# Need 3 park variables (park_red, park_green, park_orange)

# same line or transfer?
# subtract indexes for number of stops

# .find_index('STRING') # Will find the index
