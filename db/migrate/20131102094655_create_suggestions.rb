class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :votes
      t.boolean :active, :default => false

      t.timestamps
    end
  end
end
