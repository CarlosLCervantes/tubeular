module CategoriesHelper
	def parent_layout(layout)
	  @_content_for[:layout] = self.output_buffer
	  self.output_buffer = render(:file => "layouts/#{layout}")
	end

	def get_category_image_url category
		image_name = category.name.gsub(' ', '_')
		image_url = get_image_url(image_name)
		image_tag image_url
	end
end
