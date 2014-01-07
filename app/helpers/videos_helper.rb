module VideosHelper

	def ratings(video)
		avg_rating = video.rating || 3
		tag = content_tag :div, :class => "ratings", 
			:data => { :score => avg_rating, :video => video.id, :path => ratings_path } do
			## avg_rating = video.rating.round.times
			# avg_rating.times do
			# 	concat (content_tag(:i, "", :class => "icon-star icon-star-filled") + " ")
			# end
			# (5 - avg_rating).times do
			# 	concat content_tag :i, " ", :class => "icon-star"
			# end
		end
		return tag
	end

	def favorite_button(video)
		#<button class="btn btn-primary btn-favorite">Favorite <i class="icon-heart"></i></button>
		visibility = video.is_favorite(current_user) ? "invisible" : "visible"
		tag = content_tag :button, :class => "btn btn-primary btn-favorite #{visibility}", 
		:data => { :video => video.id, :path => favorites_path } do
			content_tag(:i, "", class: "icon-heart") + " Favorite" 
		end
	end

	def unfavorite_button(video)
		visibility = video.is_favorite(current_user) ? "visible" : "invisible"
		tag = content_tag :button, :class => "btn btn-primary btn-unfavorite #{visibility}", 
		:data => { :video => video.id, :path => favorites_path } do
			content_tag(:i, "", class: "icon-heart") + " Unfavorite" 
		end
	end

	def get_screenshot video
		ss_url = "http://www.website.com"
		image_tag ss_url, :class => "screenshot preview"
	end

end
