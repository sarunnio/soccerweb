class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
     @user = User.new(params[:user])
    
     if @user.save
      sign_in @user
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
        
  end
  
  def update
      @user = User.find(params[:id])
      @user.name = params[:user][:name]
      @user.email = params[:user][:email]
      @user.password = params[:user][:password]
            
      if @user.save    
        
        redirect_to @user
      else 
        title = "edit"
        render "edit"
      end 
      
      # if @user.save    
         # @extra = params[:user][:name]
        # @title = "edit"
        # render "edit"
#        
      # end 
      
      
      # if (@user.update_attributes(params[:user]))
        # redirect_to @user
      # else
        # @extra = params[:user][:name]
        # @title = "edit"
        # render "edit"
      # end
  end
  
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def edit
    @title = "Edit"
    @user = User.find(params[:id])
  end
  
end