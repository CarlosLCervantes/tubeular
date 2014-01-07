class SuggestionsController < InheritedResources::Base
	def index
		@suggestions = Suggestion.inprogress
		@suggestions_done = Suggestion.finished
	end

	def create
		comment = params[:comment]
		Suggestion.create!(title: "New Suggestion", description: comment,
			user_id: current_user.id, votes: 0, active: false)
		respond_to do |format|
			format.html { redirect_to suggestions_path, notice: 'Your suggestion was received.' }
		end
	end
end
