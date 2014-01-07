# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$("div.video-player").each (index) ->
		self = $(this)
		video_uri = self.data("uri")
		video_uri_webm = self.data("uri-webm")
		#console.log("LOAD VIDEO " + video_uri) if console
		jwplayer(self.attr("id")).setup({
			#file: video_uri,#"/assets/test.mp4",
			#,image: "/uploads/example.jpg",
			width: "100%",
			height: "300px",
			aspectratio: "7:5",
			wmode: "transparent",
			#events: {
			#	onReady: () -> 
					# this.play() 
					# this.pause()
			#},
			playlist: [{
				sources: [
					{ file: video_uri },
					{ file: video_uri_webm }
				]
			}]
		})

derp = () ->
