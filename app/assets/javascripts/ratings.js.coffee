$ ->
	$("div.ratings").raty
		score: () -> $(this).data('score')
		readOnly: () =>
			$(this).attr('read-only') == true
		click: (rating, evt) -> 
			video = $(this).data('video')
			path = $(this).data('path')
			$(this).attr('read-only', true)
			Ratings.set(video, rating, {path: path})

class window.Ratings
	@set: (video, rating, options) ->
		#path = options.path || "rating"
		path = options.path
		$.post path, {rating: rating, video: video}, (data) ->
			#alert("You rated this a " + rating)