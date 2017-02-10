class OpenHomeTime < ApplicationRecord
  belongs_to :user
  belongs_to :property
  belongs_to :application
  cattr_accessor :current_user

end
