class Property < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validates :title, presence: true
  validates :description, presence: true

end
