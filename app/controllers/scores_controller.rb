class ScoresController < ApplicationController
  
delete '/scores/delete' do
  if logged_in?
    
    current_user.scores.each do |grade|
      grade.delete
    end
      redirect to '/projects'
    end
  end
end