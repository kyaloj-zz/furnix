class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :location
      t.string :contact_info
      t.string :age
      t.string :payment_mode
      t.integer :user_id
      t.text :description

      t.timestamps null: false
    end
  end
end
