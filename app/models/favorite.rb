class Favorite < ActiveRecord::Base
	#user_id, video_id
	belongs_to :user
	belongs_to :video

	def self.get_user_favorites(user)
		#Favorite.where(user_id: user.id).select()
		#user.favorites
	end

	def self.remove(user, video)
		fav = Favorite.where(user_id: user.id, video_id: video.id).first
		fav.destroy if fav
	end
end
