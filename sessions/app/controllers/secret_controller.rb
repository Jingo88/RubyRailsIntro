
class SecretController < ApplicationController

	def show
		# using bcrypt
		@user = User.find_by(id: session[:user_id])

		if @user
			render :show
		else
			redirect_to '/login'
		end
	end

	# 	# This is for the secret secret password thing
	# 	valid_user = session[:valid_user]
	# 	if valid_user
	# 		render :show
	# 	else
	# 		redirect_to '/login'
	# 	end
	# end
end
