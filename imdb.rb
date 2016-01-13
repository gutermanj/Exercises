
require 'colorize'


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

		file = File.open("movies.txt", "r")
		  while (title = file.gets)
		  	rating = rand(0...@max_rating)

		  	new_movie = Movie.new(title, rating)

		    @movies.push(new_movie) 
		  end
		file.close
	end

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

		(1..@movies.length).each{
			print "--"
		}
		
		puts "-"

		(1..@movies.length).each_with_index {
			| i |
			print "|"
			print "#{i}".colorize(:red)
		}

		puts "|"
		puts ""

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