require 'sinatra'
require "sinatra/reloader" if development?

enable(:sessions)

	get '/' do
		erb(:home)
	end

	post "/operation" do
		operation = params[:operation]
		@first = params[:first_number].to_f
		@second = params[:second_number].to_f

		if operation == "add"
			@sum = @first + @second
			erb(:calculate_add)
		elsif operation == "subtract"
			@difference = @first - @second
			erb(:calculate_subtract)
		elsif operation == "multiply"
			@multiplied = @first * @second
			erb(:calculate_multiply)
		elsif operation == "divide"
			@divided = @first / @second
			erb(:calculate_divide)
		end
	end

	post "/stored" do
		@result = params[:stored]
		open('public/stored.txt', 'a') do |f|
  			f.puts "#{@result.to_i} |"
  				end
		@stored_value = IO.read("public/stored.txt")
		erb(:stored)
	end

	# post '/calculate_add' do
	# 	@first = params[:first_number].to_f
	# 	@second = params[:second_number].to_f
	# 	@sum = @first + @second
	# 	erb(:calculate_add)
		

	# end
	
	# post '/calculate_subtract' do
	# 	@first = params[:first_number].to_f
	# 	@second = params[:second_number].to_f
	# 	@difference = @first - @second
	# 	erb(:calculate_subtract)
	# end

	# post '/calculate_multiply' do
	# 	@first = params[:first_number].to_f
	# 	@second = params[:second_number].to_f
	# 	@multiplied = @first * @second
	# 	erb(:calculate_multiply)
	# end

	# post '/calculate_divide' do
	# 	@first = params[:first_number].to_f
	# 	@second = params[:second_number].to_f
	# 	@divided = @first / @second
	# 	erb(:calculate_divide)
	# end


