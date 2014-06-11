
# red: Park Street = Park, Kendall/MIT = Kendall, South Station = Sstation
# green: Government Center = Gcenter, Park Street = Park
# orange: North Station = Nstation, Park Street = Park, State Street = State, Downtown Crossing = Downtown, Tufts Medical Center = Tufts

# This is a hash containing three arrays representing each line
mbta = {
  red: ['Alewife', 'Davis', 'Porter', 'Harvard', 'Central', 'Kendall', 'Park', 'Sstation'],
  orange: ['Haymarket', 'Gcenter', 'Park', 'Boylston', 'Arlington', 'Copley'],
  green: ['Nstation', 'Haymarket', 'Park', 'State', 'Downtown', 'Chinatown', 'Tufts']
}

park = 'Park'

puts "What line are you starting on?"
origin_line = gets.chomp.downcase.to_sym
while !mbta.key?(origin_line)
  puts "Could not find that line. Please try again:"
  origin_line = gets.chomp.downcase.to_sym
end

puts "What stop are you starting at?"
origin_stop = gets.chomp.capitalize!
while !mbta[origin_line].index(origin_stop)
  puts "Could not find that stop. Please try again:"
  origin_stop = gets.chomp.capitalize
end

puts "What line is your destination on?"
destination_line = gets.chomp.downcase.to_sym
while !mbta.key?(destination_line)
  puts "Could not find that line. Please try again:"
  destination_line = gets.chomp.downcase.to_sym
end

puts "What is your destination stop?"
destination_stop = gets.chomp.capitalize!
while !mbta[destination_line].index(destination_stop)
  puts "Could not find that stop. Please try again:"
  destination_stop = gets.chomp.capitalize
end

if origin_line == destination_line
  total_stops = (mbta[origin_line].index(origin_stop) - mbta[destination_line].index(destination_stop)).abs
  puts "Total number of stops: #{total_stops}"
end

if origin_line != destination_line
# below: sum of stops on first line
  first_line_stops = (mbta[origin_line].index(origin_stop) - mbta[origin_line].index(park)).abs
# below: sum of stops on second line
  second_line_stops = (mbta[destination_line].index(park) - mbta[destination_line].index(destination_stop)).abs
##ABOVE: park = 2 - 1

# below: sum of stops on first line + stops on second line
  total_stops = first_line_stops + second_line_stops
  puts "Total number of stops: #{total_stops}"
end
