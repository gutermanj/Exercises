class ContactsController < ApplicationController
  def index
  	@contacts = Contact.all.group_by{|u| u.name[0]}
  	render 'index'
  end

  def new
  	render 'new'
  end

  def create
	 # Create new Contact from params[:contact]
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phonenumber => params[:contact][:phonenumber],
      :email => params[:contact][:email])

    contact.save

    # Render contact's attributes
    render(:text => contact.attributes)
  end

  def show
  	#THIS DONT WORK
  	id = params[:id]
  	@contact = Contact.find_by(id: id)
  end
end
