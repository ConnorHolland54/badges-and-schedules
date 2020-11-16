# Write your code here.

def badge_maker(name)
    return "Hello, my name is #{name}."
end 

def batch_badge_creator(attendees)
    badge_messages = []
    attendees.each do |attendee|
        badge_messages.push(badge_maker(attendee))
    end
    return badge_messages
end

def assign_rooms(attendees)
    rooms_available = [1,2,3,4,5,6,7]
    room_assignments = []
    count = 0

    attendees.each do |attendee|
        room_assignments.push("Hello, #{attendee}! You'll be assigned to room #{rooms_available[count]}!")
        count += 1
    end
    return room_assignments
end

def printer(attendees)
    batch_badge_creator(attendees).each do |badge|
        puts(badge)
    end
    assign_rooms(attendees).each do |assignment|
        puts(assignment)
    end

end