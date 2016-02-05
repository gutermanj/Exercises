class LinksController < ApplicationController
  def index
  	@links = Link.all
  	render 'index'
  end

  def create
  	linker = Link.new(origurl: "/links/show/")

  	linker.save
  	render(:text => linker.attributes)
  end

  def show
  	@link = Link.find_by(params[:id])
  	render 'show'
  end

end
