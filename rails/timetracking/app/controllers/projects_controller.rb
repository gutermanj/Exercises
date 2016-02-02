class ProjectsController < ApplicationController
  def index
  	@projects = Project.limit(10)
  	render 'index'
  end
end
