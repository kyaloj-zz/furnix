class AddAttachmentAvatarToFurnitures < ActiveRecord::Migration
  def self.up
    change_table :furnitures do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :furnitures, :avatar
  end
end
