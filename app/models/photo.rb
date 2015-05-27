class Photo < ActiveRecord::Base
	belongs_to :furniture
	has_attached_file :image
	validates_presence_of :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
