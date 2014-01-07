class WelcomeController < ApplicationController
	def index
		page_size = Settings.welcome.videos_page_size
		@videos = Video.most_recent.page(params[:page]).per(page_size)
	end
end
