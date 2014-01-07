ActiveAdmin.register Suggestion do
	controller do
		def permitted_params
			params.permit(:suggestion => 
				[:title, :description, :user_id, :votes, :active])
		end
	end
end
