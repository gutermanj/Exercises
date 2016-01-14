
require 'colorize'

	#Handles the movie iteself
class Movie
	attr_accessor :title, :rating
	def initialize(title, rating)
		@title = title
		@rating = rating
	end	
end

class NewRating
	def initialize
		@movies = []
		@max_rating = 10

			# Reads the txt file with the movies in it and 
			# pushes them into @movies array
		file = File.open("movies.txt", "r")
		  while (title = file.gets)
		  	rating = rand(0...@max_rating)

		  	new_movie = Movie.new(title, rating)

		    @movies.push(new_movie) 
		  end
		file.close
	end

		# Keeps adding | # | as long as the rating (r) is less than the
		# randomized @max_rating
	def show_rating
		r = @max_rating

		while ( r >= 0 )
			@movies.each {
				| movie |
				print "|".colorize(:blue)

				if movie.rating >= r
					print "#".colorize(:green)
				else
					print " "
				end
			}
				
			puts "|".colorize(:blue)

			r -= 1
		end

		# prints "--" throughout the length of the @movies array
		(1..@movies.length).each do
			print "--"
		end
		
		puts "-"

				# prints a "|" and the current index
		(1..@movies.length).each_with_index do	| i |
			print "|"
			print "#{i}".colorize(:red)
		end

		puts "|"
		puts ""

			# prints the list of movies
		@movies.each_with_index {
			| movie, i |

			index = i + 1
			print "#{index}. #{movie.title}".colorize(:red)
		}

		puts ""
	end


end

newRating = NewRating.new
newRating.show_rating