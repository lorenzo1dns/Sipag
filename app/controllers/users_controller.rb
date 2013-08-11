class UsersController < ApplicationController

  def new
  	@user = User.new
  end
  def index
    @users = User.all 
  end
  def create
  	@user = User.new(params[:user])
  	if @user.save
       flash.now[:success] = "Usuario Creado correctamente"
      render 'new'
  	else
  		render 'new'
  	end
  			
  end

private
  def admin_user
      redirect_to(root_path) unless current_user.admin?
        
      
    end

 
end
