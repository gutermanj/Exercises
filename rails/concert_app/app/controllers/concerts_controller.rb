class ConcertsController < ApplicationController
  def index
  	@concerts = Concert.all

  	@concerts_today = @concerts.where(date: Date.today)

  	@concerts_this_month = @concerts.where('extract(month from date) = ?', Date.today.month)

    @user_id = session[:user_id]
  end

  def show
  	@concert = Concert.find_by(id: params[:id])

  	@deletecomment = Comment.find_by(id: params[:id])

  	@comments = @concert.comments.all

  	@comment = @concert.comments.new

    @user_id = session[:user_id]

  end

  def new
  	@concert = Concert.new

    @user_id = session[:user_id]
  end

  def create
  	@concert = Concert.new(
  		:artist => params[:concert][:artist],
  		:venue => params[:concert][:venue],
  		:city => params[:concert][:city],
  		:date => params[:concert][:date],
  		:price => params[:concert][:price],
  		:description => params[:concert][:description])

  	if @concert.save
  		redirect_to concert_path(@concert)
  	end
  end

  def destroy
  	@comment = Comment.find_by(id: params[:id])


  	@concert = Concert.find_by(id: params[:id])
  	
  	@concert.destroy

  	redirect_to concerts_path
  end
end
