require "sinatra"
require "artii"


	get '/ascii/:word/:font?' do
		@word = params[:word]
		@font = params[:font]

		if @font.nil?
			@font = 'acrobatic'
		end
			potato = Artii::Base.new :font => @font
			@stored_word = potato.asciify(@word)
		erb(:potato)
	end