class AddCategoryToVideo < ActiveRecord::Migration
  def change
  	add_column :videos, :category_id, :integer, :required => true
  	add_index :videos, :category_id, :unique => false
  end
end
