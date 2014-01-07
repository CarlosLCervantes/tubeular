class RatingsController < ApplicationController
	def create
		respond_to do |format|
			if current_user
				@rating = params[:rating].to_i
				@video = Video.find(params[:video])
				cur_rating = @video.rating || 0
				new_rating = ((cur_rating * @video.num_ratings) + @rating) / (@video.num_ratings + 1)
				@video.rating = new_rating
				@video.num_ratings = @video.num_ratings + 1
				@video.save!
				format.json { render json: true }
			else
				format.json { render json: false }
			end
		end
	end
end
