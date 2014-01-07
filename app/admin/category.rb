ActiveAdmin.register Category do
	controller do
		def permitted_params
				params.permit(:category => [:name])
		end
	end
end
