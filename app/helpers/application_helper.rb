module ApplicationHelper
	def get_image_url name
		url = name
		use_aws = false
		if use_aws
			url = "http://shit.aws.com/bucket/#{name}"
		else
			"/assets/#{name}"
		end
		return url
	end
end
