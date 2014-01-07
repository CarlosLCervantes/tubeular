class UsersController < ApplicationController
	def edit
	end

	def permitted_params
			params.permit(:user => 
				[:username, :password, :email])
		end
end
