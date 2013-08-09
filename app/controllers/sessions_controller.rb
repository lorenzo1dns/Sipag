class SessionsController < ApplicationController
	def new
	end
	def create
		user = User.find_by_name(params[:session][:name])
		if user && user.authenticate(params[:session][:password])
			sign_in user
      		redirect_to root_url	
		else
			flash.now[:error] = 'Invalida Combinacion de usuario y contrasenia'
			render 'new'
		end
	end

	def destroy	
	sign_out
    redirect_to signin_url	
	end
end
