class VideosController < ApplicationController
  before_action :set_video, only: [:edit, :update, :destroy]
  before_action :setup

  def index
    @videos = Video.most_recent.page(params[:page]).per(@page_size)
    @list_label = "Most Recent"
  end

  def most_viewed
    @videos = Video.most_viewed.page(params[:page]).per(@page_size).load
    @list_label = "Most Viewed"
    render 'index'
  end

  def most_favorited
    @videos = Video.most_favorited.page(params[:page]).per(@page_size).load
    @list_label = "Most Favorites"
    render 'index'
  end

  def best_rated
    @videos = Video.best_rated.page(params[:page]).per(@page_size).load
    @list_label = "Best Reated"
    render 'index'
  end

  def show
    @video = Video.find(params[:id])
    @video.mark_watched
    @videos = Video.where("category_id = ? AND id != ?", @video.category_id, @video.id).limit(4)
  end

  def search
    @term = params[:term]
    @videos = []
    unless @term.blank?
      @videos = Video.where("name LIKE '%#{@term}%'")#.per(@page_size).load
    end
  end

  def random
    @video = Video.offset(rand(Video.count)).first
    respond_to do |format|
      format.html {redirect_to @video}
    end
  end

  private
    def setup
      @page_size = Settings.welcome.videos_page_size
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params[:video]
    end
end
