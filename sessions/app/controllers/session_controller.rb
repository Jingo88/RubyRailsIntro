class SessionController < ApplicationController
	def new
		render :new
	end

	def create
		# this is used for bcrypt. More secure than sessions
		user = User.find_by(username: params[:username])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/secret'
		else
			@error = true
			render :new
		end
	end
	# 	# will look into config / secrets / secret_password
	# 	if params[:password] == Rails.application.secrets.secret_password
	# 		session[:valid_user] = true
	# 		redirect_to '/secret'
	# 	else
		
	# 		render :new
	#     end
	# end

	def destroy
		# reset_session will kill the existing session
		reset_session
		redirect_to '/login'
	end
end
