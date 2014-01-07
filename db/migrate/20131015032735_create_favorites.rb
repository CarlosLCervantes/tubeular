class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :video_id

      t.timestamps
    end
    add_index :favorites, :user_id, :unique => false
    add_index :favorites, :video_id, :unique => false
  end
end
