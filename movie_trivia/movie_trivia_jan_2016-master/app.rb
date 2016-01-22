require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

get "/imdb_test" do
  search = Imdb::Search.new("pizza")

  @number_of_results = search.movies.length
  @first_result = search.movies[1]

  erb(:imdb_test)
end

post "/imdb_search" do
		@search_terms = params[:title]

		search = Imdb::Search.new("#{@search_terms}")

		@results = Array.new(search.movies[0..10])


		@results.select! do |x|
			x.poster != nil
		end
		# @arrayy = @results.each do |x|
		# 	x.year
		# end
		@tested = [*0..@results.length - 1].sample
		# @testing = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

		# @tested = @testing.sample

		@tomato = @results[@tested].year

		puts @tomato

		erb(:imdb_search)
	end
