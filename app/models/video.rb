class Video < ActiveRecord::Base
	# attr_accessible: :uri, :name, :active, :rating, :premium, 
	# :view_count, :favorite_count, :download_count, 
	#:length_in_seconds, :num_ratings

	#validates_uniqueness_of :name, :allow_blank => false
	has_and_belongs_to_many :tags
	has_many :favorites
	has_many :users, through: :favorites
	belongs_to :category

	scope :published, -> { where(active: true) }
	scope :most_recent, -> { where(active: true).order(created_at: :desc) }
	scope :most_viewed, -> { where(active: true).order(view_count: :desc) }
	scope :most_favorited, -> { where(active: true).order(favorite_count: :desc) }
	scope :best_rated, -> { where(active: true).order(rating: :desc) }

	def length
		Time.at(self.length_in_seconds).gmtime.strftime('%M:%S')
	end

	def mark_watched
		self.view_count = (self.view_count || 0) + 1
		self.save!
	end

	def is_favorite(user)
		#user && user.favorites.include?(self)
		fav = nil
		fav = Favorite.where(user_id: user.id, video_id: self.id).first if user
		fav.nil? ? false : true
	end

	def to_param
		"#{id}-#{name.gsub(/[^a-z0-9]+/i, '-')}"
	end
end
