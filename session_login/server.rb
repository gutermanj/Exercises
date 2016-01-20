require "sinatra"
require "sinatra/reloader" if development?

enable(:sessions)

credentials = {
	  #key		  #value
	"julian" => "password",
	"alex" => "password2",
	"potato" => "tomato"
}


get '/' do



	if session[:user].nil?
		redirect to('/login')
	else
		erb(:home)
	end

end

get '/login' do
	if session[:user]
		redirect to('/')
	end

	erb(:login)

end

post '/logged_in' do

		@username = params[:username]
		@password = params[:password]

		@credentials = credentials

		@credentials.each do |key, value|
			if key == @username && value == @password
				session[:user] = @username
			end
		end

		if session[:user]
			redirect to('/')
		else
			redirect to('/')
		end
end

post '/logout' do
	session[:user] = nil
	redirect to('/')
end









