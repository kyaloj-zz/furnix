class AddAttachmentBackgroundImageToShops < ActiveRecord::Migration
  def self.up
    change_table :shops do |t|
      t.attachment :background_image
    end
  end

  def self.down
    remove_attachment :shops, :background_image
  end
end
