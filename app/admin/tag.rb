ActiveAdmin.register Tag do
	controller do
		def permitted_params
				params.permit(:tag => [:name])
		end
	end
end
