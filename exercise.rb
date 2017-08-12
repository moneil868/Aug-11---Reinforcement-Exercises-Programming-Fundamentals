trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

# Save the direction of train 111 into a variable.
train111_direction = ""

trains.each do |train|
  if train[:train] == "111"
    train111_direction = train[:direction]
  end
end
puts "Train 111 is heading #{train111_direction}"

# Save the frequency of train 80B into a variable.
train80B_frequency = ""
trains.each do |train|
  if train[:train] == "80B"
    train80B_frequency = train[:frequency_in_minutes]
  end
end
puts "The frequency of train 80B is #{train80B_frequency} minutes"


# Save the direction of train 610 into a variable.
train610_direction = ""

trains.each do |train|
  if train[:train] == "610"
    train610_direction = train[:direction]
  end
end
puts "Train 610 is heading #{train610_direction}"

# Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.
northern_trains = []
trains.each do |train|
  if train[:direction] == "north"
    northern_trains << train[:train]
  end
end
puts "Trains #{northern_trains.join(", ")} are heading north"

# Do the same thing for trains that travel east.
eastern_trains = []
trains.each do |train|
  if train[:direction] == "east"
    eastern_trains << train[:train]
  end
end
puts "Train #{eastern_trains.join(", ")} is heading east"

# You probably just ended up rewriting some of the same code. Move this repeated code into a method that accepts a direction and a list of trains as arguments, and returns a list of just the trains that go in that direction. Call this method once for north and once for east in order to DRY up your code.
def get_list_of_trains_by_direction(trains, direction)

  trains.each do |train|
    if train[:direction] == direction
      puts "Train #{train[:train]} is heading #{direction}"
    end
  end

end

puts
puts "These trains go north"
get_list_of_trains_by_direction(trains, "north")
puts
puts "These trains go east"
get_list_of_trains_by_direction(trains, "east")


# Pick one train and add another key/value pair for the first_departure_time. For simplicity, assume the first train always leave on the hour. You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.
trains.each do |train|
  if train[:train] == "80B"
    train[:first_departure_time] = 6
  end
end
puts trains
