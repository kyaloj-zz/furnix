class AddFurnitureIdToComment < ActiveRecord::Migration
  def change
  	add_column :comments, :furniture_id,    :integer
  end
end
