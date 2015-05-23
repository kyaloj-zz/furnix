class Furniture < ActiveRecord::Base
	has_many :comments
	has_many :photos
	belongs_to :shop
end
