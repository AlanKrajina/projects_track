class UsersController < ApplicationController
  
  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    if @user.id == current_user.id
    erb :'users/show'
      else
         redirect to '/'
      end 
  end
  
  
  get '/signup' do
      if !logged_in?
          erb :'/users/create_user'
      else
          redirect '/projects'
      end
  end
  
  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      redirect to '/signup'
    else
      @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
      
     # @user.scores << Score.find_or_create_by(:grade => params[:grade])
      @user.save
      session[:user_id] = @user.id
      redirect to '/projects'
    end
  end 
  
  
  
  
   get '/login' do
    if !logged_in?
      erb :'users/login'
    else
      redirect to '/projects'
    end
  end 
  
  post '/login' do
    user = User.find_by(:username => params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to "/projects"
    else
      redirect to '/signup'
    end
  end  
  
  
  
  
  get '/logout' do
    if logged_in?
      session.destroy
      redirect to '/login'
    else
      redirect to '/'
    end
  end  
end