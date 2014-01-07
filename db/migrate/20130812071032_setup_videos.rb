class SetupVideos < ActiveRecord::Migration
  def change
  	execute "ALTER TABLE videos ENGINE = MYISAM"
  	#add_column :videos, :category_id, :integer, index: true
  	add_column :videos, :uri, :string
  	add_column :videos, :name, :string
  	add_column :videos, :active, :boolean
  	add_column :videos, :rating, :decimal
  	add_column :videos, :premium, :boolean
  	add_column :videos, :view_count, :integer
  	add_column :videos, :favorite_count, :integer
  	add_column :videos, :download_count, :integer
  	add_column :videos, :length_in_seconds, :integer

  	add_index :videos, :name, name: 'name', type: :fulltext
  end
end
