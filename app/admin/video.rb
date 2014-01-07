ActiveAdmin.register Video do
	controller do
		def permitted_params
			params.permit(:video => 
				[:uri, :name, :active, :rating, :premium, :view_count, 
				 :favorite_count, :download_count, :length_in_seconds, 
				 :tags, :category, :category_id, :uri_webm, :created_at])
		end
	end
	form do |f|
		f.inputs :name => "Basic" do
			f.input :uri
			f.input :uri_webm
			f.input :name
			f.input :created_at
			f.input :active
			f.input :premium
			f.input :view_count
			f.input :favorite_count
			f.input :download_count
			f.input :length_in_seconds
			f.input :tags, :as => :check_boxes, :collection => Tag.all
			f.input :category, :as => :select, :collection => Category.all
		end
		f.actions
	end
end
