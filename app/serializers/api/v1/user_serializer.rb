class Api::V1::UserSerializer < Api::V1::BaseController             
  has_many :shops
  has_many :comments, through: :furniture
  has_attached_file :avatar
    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png"]
    validates_presence_of :name

  def created_at
    object.created_at.in_time_zone.iso8601 if object.created_at
  end

  def updated_at
    object.updated_at.in_time_zone.iso8601 if object.created_at
  end
end