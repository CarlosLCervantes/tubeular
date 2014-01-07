class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end

    create_table :tags_videos do |t|
      t.belongs_to :video
      t.belongs_to :tag
    end

    add_index :tags, :name, :unique => true
  end
end
