class Furniture < ActiveRecord::Base
	has_many :comments
	has_many :photos
	belongs_to :shop
    has_attached_file :avatar

	do_not_validate_attachment_file_type :avatar

end
