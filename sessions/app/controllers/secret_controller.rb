
class SecretController < ApplicationController

	def show
		@user = User.find_by(id: session[:user_id])

		if @user
			render :show
		else
			redirect_to '/login'
		end
	end

	# 	# This is for sessions
	# 	valid_user = session[:valid_user]
	# 	if valid_user
	# 		render :show
	# 	else
	# 		redirect_to '/login'
	# 	end
	# end
end
