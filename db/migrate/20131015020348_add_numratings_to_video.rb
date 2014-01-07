class AddNumratingsToVideo < ActiveRecord::Migration
  def change
  	add_column :videos, :num_ratings, :integer, :default => 0
  	change_column :videos, :rating, :integer, :default => 0
  end
end
