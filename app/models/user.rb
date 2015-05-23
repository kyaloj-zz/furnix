class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :shops
	has_many :comments 
	has_attached_file :background_image
    validates_attachment_content_type :background_image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
