class Comment < ActiveRecord::Base
	belongs_to :furniture
	belongs_to :user

	
end
