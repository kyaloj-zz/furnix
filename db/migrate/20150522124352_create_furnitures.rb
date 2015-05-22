class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.integer :shop_id
      t.string :title
      t.text :description
      t.string :image
      t.decimal :price
      t.integer :stock
      t.string :category
      t.string :delivery

      t.timestamps null: false
    end
  end
end
