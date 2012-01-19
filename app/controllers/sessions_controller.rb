class SessionsController < ApplicationController
  def new
    @title = "Sign-in"
    
  end
  
  def create
    @title = "create"
  end
  
  def destroy
    @title = "destroy"
  end
  
  def show
    @title = "show"
  end

end
