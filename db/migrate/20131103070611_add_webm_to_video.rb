class AddWebmToVideo < ActiveRecord::Migration
  def change
  	add_column :videos, :uri_webm, :string
  end
end
