class OpenHomeTime < ApplicationRecord
  belongs_to :user
  belongs_to :property
  cattr_accessor :current_user

end
