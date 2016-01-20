require "sinatra"
require "date"

require "sinatra/reloader" if development?

enable(:sessions)
get '/hours/ago/:number' do
	@number = params[:number]
	t = Time.now
	number = @number.to_i * 3600
	@time = t - number
	erb(:hours)
end