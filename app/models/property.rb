class Property < ApplicationRecord
  has_many :applications
  belongs_to :user
  has_many :open_home_times
  mount_uploader :picture, PictureUploader
  validates :title, presence: true
  validates :description, presence: true



end
