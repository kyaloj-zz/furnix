class Shop < ActiveRecord::Base
	has_many :furnitures
	belongs_to :user
end
