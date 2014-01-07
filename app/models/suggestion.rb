class Suggestion < ActiveRecord::Base
	def index
		@suggestions = Suggestion.all
	end

	#default_scope :active, -> { where(active: true) }
	default_scope where(:active => true)
	scope :inprogress, -> { where(finished: false) }
	scope :finished, -> { where(finished: true) }


end
