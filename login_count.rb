class Authentication
		attr_accessor :logged_in
	def initialize
		@logged_in = logged_in
		# Possible combinations of username and passwords
		credentials = [
			{ :login => ["julian", "password"] },
			{ :login1 => ["john", "potato"] },
			{ :login2 => ["bonqueesha", "tomato"] }
		]

		@logged_in = false

		puts "Username: "
		username = gets.chomp

		puts "Password: "
		password = gets.chomp

				# The conditionals to test user input
			if username == credentials[0][:login][0] && password == credentials[0][:login][1]
			@logged_in = true

			elsif username == credentials[1][:login1][0] && password == credentials[1][:login1][1]
			@logged_in = true

			elsif username == credentials[2][:login2][0] && password == credentials[2][:login2][1]
			@logged_in = true
			end

			if @logged_in == false
				puts "Get Outta Here!"
			end
	end
end


class WordCount
	def initialize(login)
		@login = login
	end

		#Takes the sentence and counts the words after splitting into words
	def count_words
		if @login == true
			puts "Enter a sentence."

			input = gets.chomp
			words = input.split(" ")
			word_count = words.length

			puts "The sentence has this many words: #{word_count}"
		end
	end
end


potato = Authentication.new

WordCount.new(potato.logged_in) 

potato1 = WordCount.new(potato.logged_in)

potato1.count_words


