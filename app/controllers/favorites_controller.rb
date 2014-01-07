class FavoritesController < ApplicationController
	def index
		 1 / 0
		@videos = user.favorite_videos#Favorite.get_user_favorites(current_user)
	end

	def show
		@videos = current_user.videos.to_a
	end

	def create
		success = true
		if current_user
			@video = Video.find(params[:id])
			unless @video.is_favorite(current_user)
				Favorite.create(user_id: current_user.id, video_id: @video.id)
			end
		else 
			success = false
		end

		respond_to do |format|
			format.json {render json: success}
		end
	end

	def destroy
		@video = Video.find(params[:id])
		Favorite.remove(current_user, @video)
		respond_to do |format|
			format.json {render json: true}
		end
	end
end
