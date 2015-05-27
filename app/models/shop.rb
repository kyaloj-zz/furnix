class Shop < ActiveRecord::Base
	has_many :furnitures
	has_many :comments, through: :furnitures
	
	belongs_to :user
	has_attached_file :avatar, :styles => { :profile => "600x600>", :thumb => "300x300>" }
	validates_attachment_presence :avatar
    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png"]
    has_attached_file :background_image, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :background_image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
    validates_presence_of :name, :location, :contact_info, :age, :description, :avatar, :background_image
end
