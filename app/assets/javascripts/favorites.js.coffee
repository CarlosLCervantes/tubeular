$ ->
	$(".btn-favorite").bind "click", (e) -> Favorite.add(e.target, e)
	$(".btn-unfavorite").bind "click", (e) -> Favorite.remove(e.target, e)

class window.Favorite
	@add: (target, evt) ->
		unless loggedIn
			alert("Please Login to favorite")
			return true

		$self = $(target)
		video = $self.data('video')
		path = $self.data('path')
		$.post path, {id: video}, (data) ->
			$self.hide()
			$(".btn-unfavorite").removeClass("invisible").show()

	@remove: (target, evt) ->
		$self = $(target)
		video = $self.data('video')
		path = $self.data('path')
		$.ajax 
			url: path
			method: "DELETE"
			data: {id: video}
			success: (data) ->
				$self.hide()
				$(".btn-favorite").removeClass("invisible").show()