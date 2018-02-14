hotel =
{ data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

# Question 1:
search_room  = "201"
capacity_201 = 0
id_201       = 0
hotel[:data][:rooms].each do |a_room|
  if a_room[:room_number] == search_room
    capacity_201 = a_room[:capacity]
    id_201       = a_room[:id]
  end
end
puts "Capacity of room #{search_room} is #{capacity_201}."

# Question 2:

hotel[:data][:events].each do |a_events|
  if a_events[:room_id] == id_201 && a_events[:attendees] <= capacity_201
    puts "The event #{a_events[:id]} is ok."
  end
end
