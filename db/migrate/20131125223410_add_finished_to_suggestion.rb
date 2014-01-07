class AddFinishedToSuggestion < ActiveRecord::Migration
  def change
  	add_column :suggestions, :finished, :boolean, :default => false
  end
end
