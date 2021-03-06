class ProjectsController < ApplicationController
  
  get '/projects' do
    authenticate
      @projects = Project.all
      erb :'projects/projects'
  end  
  
  get '/projects/new' do
    if logged_in?
      @message = session.delete(:message)

      erb :'projects/create_project'
    else
      redirect to '/login'
    end
  end
  
  post '/projects' do
    authenticate
      if params[:name] == "" || params[:content] == "" || params[:completion] == "" || params[:result] == ""
        
        session[:message] = "Please fill out all of the fields."

        redirect to "/projects/new"
      else
        @project = current_user.projects.build(name: params[:name], content: params[:content], completion: params[:completion])
        @project.results << Result.all.find_by(:info => params[:result])
        
        if @project.save
          redirect to "/projects/#{@project.id}"
        else
          redirect to "/projects/new"
        end
    end
  end
  
  get '/projects/:id' do
    if logged_in?
      @project = Project.find_by_id(params[:id])
      erb :'projects/show_project'
    else
      redirect to '/login'
    end
  end
  
  get '/projects/:id/edit' do
    if logged_in?
      @project = Project.find_by_id(params[:id])
      if @project && @project.user == current_user
             
              @message = session.delete(:message)

        erb :'projects/edit_project'
      else
        redirect to '/projects'
      end
    else
      redirect to '/login'
    end
  end

  patch '/projects/:id' do
    if logged_in?
      if params[:name] == "" || params[:content] == "" || params[:completion] == "" || params[:result] == ""
        
        session[:message] = "Please fill out all of the fields."

        redirect to "/projects/#{params[:id]}/edit"
      else
        @project = Project.find_by_id(params[:id])
        if @project && @project.user == current_user
          if @project.update(name: params[:name], content: params[:content], completion: params[:completion])
            redirect to "/projects/#{@project.id}"
          else
            redirect to "/projects/#{@project.id}/edit"
          end
        else
          redirect to '/projects'
        end
      end
    else
      redirect to '/login'
    end
  end 
  
  delete '/projects/:id/delete' do
  if logged_in?
      @project = Project.find_by_id(params[:id])
      if @project && @project.user == current_user
        @project.delete
      end
      redirect to '/projects'
    else
      redirect to '/login'
    end
  end
end