class UsersController < ApplicationController
  
  get '/signup' do
      if !logged_in?
          erb :'/users/create_user'
      else
          redirect '/projects'
      end
  end
  
end