class Comment < ActiveRecord::Base
	belongs_to :furniture
	belongs_to :user

	validates_presence_of :body

	
end
