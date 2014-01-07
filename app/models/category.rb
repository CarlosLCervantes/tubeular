class Category < ActiveRecord::Base
	#attr_accessible :name
	validates :name, presence: true
	has_many :videos

	def get_image_url
		#"http://www.test.com/#{self.name}.png" #300x225
		safe_name = name.gsub(" ", "_").downcase
		"http://s3-us-west-2.amazonaws.com/derp/#{safe_name}.png"
	end

	def to_param
		"#{id}-#{name.gsub(/[^a-z0-9]+/i, '-')}"
	end
end
