class Game
	attr_accessor :rooms, :current_pos
	def initialize
		@rooms = [] #Sets the array of rooms to nil as of now
		@current_pos = 0 #This is used to determine which room you're in
	end
	

	def add_room(new_room)
		@rooms.push(new_room) #The method to push the rooms into the array above
	end

	def print_rooms
		puts "#{rooms}" #I made this to make sure the .add_room method worked
	end

	def start # This is complicated. This is what is going to determine if you go through the right exit

		puts "Theres light to the north" #The initial room you are at @rooms[0]
			@rooms.each do | x | #looping through the array
				answer = gets.chomp #Takes the input

			if answer.upcase == @rooms[@current_pos].exit #If the input is equal to the exit (answer) of @rooms[@current_pos] <= That's why I set @current_pos to 0
				if @current_pos == 4 #The last room
					puts "Good Job M8 You Did It :D" #Congradulating the player!
					
				else
				@current_pos += 1 #If you're not in the last room but your answer is == to @rooms[@current_pos] (reference line 23)
				puts @rooms[@current_pos].description #It's going to add a position i.e. turn into @rooms[1] from @rooms[0] and it will print the new description of that @rooms item
				end
			else
				puts "You hit a wall. You dead now. Sorry m8." #If it's the wrong answer it will simply print this and exit
				exit
				
			end
		end
	end
end


class Room
	attr_accessor :description, :exit #This class is simply so you can create the actual rooms and manually put them into the @rooms array
	def initialize(description, exit) #The 2 different details about them (exit == answer)
		@description = description #Making them accessible
		@exit = exit #Same as 44
	end

end

room_adder = Game.new #This is so in a way I can use the Game class


room = Room.new("There is a light to the north","N") #These are the actualy room objects I'm creating
room2 = Room.new("There is a light to the east", "E")
room3 = Room.new("There is a light to the south", "S")
room4 = Room.new("There is a light to the east", "E")
room5 = Room.new("There is a light to the north", "N")


room_adder.add_room(room) #room_adder is = Game.New so I am using the method .add_room which will push the Room.new Object into the array in class Game.
room_adder.add_room(room2)
room_adder.add_room(room3)
room_adder.add_room(room4)
room_adder.add_room(room5)

room_adder.start #room_adder again so I'm using Game class and using the method start which handles how the game is played (reference line 17)
