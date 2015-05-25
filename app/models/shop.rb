class Shop < ActiveRecord::Base
	has_many :furnitures
	has_many :comments, through: :furniture
	belongs_to :user
	has_attached_file :avatar 
    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
