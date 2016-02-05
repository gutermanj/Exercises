class EntriesController < ApplicationController
  def index
  	@project = Project.find_by(id: params[:project_id])
  	unless @project
  		render "shared/error"
  	end
  end
end
