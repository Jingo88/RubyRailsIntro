class SessionController < ApplicationController
	def new
		render :new
	end

	def create
		# will look into config / secrets / secret_password
		if params[:password] == Rails.application.secrets.secret_password
			session[:valid_user] = true
			redirect_to '/secret'
		else
		
			render :new
	    end
	end

	def destroy
		# reset_session will kill the existing session
		reset_session
		redirect_to '/login'
	end
end