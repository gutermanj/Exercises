require 'ruby-dictionary'

class Checker
	attr_accessor :word1, :word2, :isittrue
	def initialize(word1, word2)
		@word1 = word1
		@word2 = word2
		@position1 = 0
		@position2 = 0
	end

	
	#----------------------------------


	def doesitexist(joined_word1, joined_word2)
		@dictionary = Dictionary.from_file('/usr/share/dict/words')

			if @dictionary.exists?(joined_word1) == false
				false
			elsif @dictionary.exists?(joined_word2) == false
				false
			else
				puts "Yep, that work exists...."
				true
				equal_length
			end
	end

	#----------------------------------

	def equal_length
			if @word1.length == @word2.length
				puts "They're equal length.. Almost there!"
				change
			else
				puts "They're not equal length, sorry"
		end
	end

	#----------------------------------

	def finish
		exit
	end

	def change
		while @word1 != @word2
			if @word1[@position1] == @word2[@position2]
				@position1 += 1
				@position2 += 1

			else
				x = @word2[@position2]
				@word2[@position2] = @word1[@position1]

				if @dictionary.exists?(@word2) == false
					@word2[@position2] = x
					@position1 += 1
					@position2 += 1
					puts "You can't do that sorry, no combinations..."
					exit
				else
					puts @word2
				end
			end
		end
	end
end





puts "Enter a word"

word1 = gets.chomp

puts "Enter another word"

word2 = gets.chomp

checker = Checker.new(word1, word2)

checker.doesitexist(word1, word2)

# while checker.isittrue == false
# puts "exit worked"
# end









