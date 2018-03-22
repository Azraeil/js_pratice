def number(bus_stops)
  sum_people = 0
  bus_stops.each do |array_people|
    sum_people += array_people[0]
    sum_people -= array_people[1]
  end
  puts sum_people
  return sum_people
end

=begin
[get into bus, get off bus]
=end

number([[10, 0], [3, 5], [5, 8]])
