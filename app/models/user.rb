class User < ActiveRecord::Base
	has_many :shops
	has_many :comments 
	has_attached_file :background_image
    validates_attachment_content_type :background_image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
