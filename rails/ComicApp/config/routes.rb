Rails.application.routes.draw do
  devise_for :users
  
  root 'comics#home'

  get '/' => 'comics#home'

end