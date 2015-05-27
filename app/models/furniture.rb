class Furniture < ActiveRecord::Base
	has_many :comments
	has_many :photos
	belongs_to :shop
	


    has_attached_file :avatar
	validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png"]
    validates_presence_of :title, :description, :avatar, :price, :category, :delivery
end
