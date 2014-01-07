class RemoveIndexFromUser < ActiveRecord::Migration
  def change
  	remove_index :users, :username
  end
end
