require "sinatra"
require "date"

require "sinatra/reloader" if development?

enable(:sessions)

get '/' do 
	erb(:home)
end