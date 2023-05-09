=begin
Write a function that returns the number of users in a chatroom based on the following rules:

If there is no one, return "no one online".
If there is 1 person, return "user1 online".
If there are 2 people, return "user1 and user2 online".
If there are n>2 people, return the first two names and add "and n-2 more online".
For example, if there are 5 users, return:

"user1, user2 and 3 more online"
=end

def chatroom_status(users)
    if users.empty?
        'no one online'
    elsif users.size == 1
        "#{users[0]} online"
    elsif users.size == 2
        "#{users[0]} and #{users[1]} online"
    elsif users.size > 2
        more_online = users.size - 2
        "#{users[0]}, #{users[1]} and #{more_online} more online"
    end
end

puts chatroom_status([]) # "no one online"

puts chatroom_status(["paRIE_to"]) # "paRIE_to online"

puts chatroom_status(["s234f", "mailbox2"]) # "s234f and mailbox2 online"

puts chatroom_status(["pap_ier44", "townieBOY", "panda321", "motor_bike5", "sandwichmaker833", "violinist91"])
# "pap_ier44, townieBOY and 4 more online"
