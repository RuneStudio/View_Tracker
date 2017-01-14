class Property < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :title, presence: true
  validates :description, presence: true
  validates :suburb, presence: true
  validates :city, presence: true
  validates :current_flatmate, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :smokers_allow, presence: true
  validates :pets_allow, presence: true

end
