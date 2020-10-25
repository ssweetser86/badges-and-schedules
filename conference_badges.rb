def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(guests)
    list = []
    guests.each  {|name| list << "Hello, my name is #{name}."}
    return list
end

def assign_rooms(guests)
    list = []
    guests.each_with_index do |name , index| 
        list << "Hello, #{name}! You'll be assigned to room #{index%7+1}!"
    end
    return list
end

def printer(guests)
    badges = batch_badge_creator(guests)
    rooms = assign_rooms(guests)
    badges.each {|x| puts x}
    rooms.each {|y| puts y}
end