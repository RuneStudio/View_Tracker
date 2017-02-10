class Application < ApplicationRecord
  belongs_to :user
  belongs_to :property
  has_many :open_home_times
  cattr_accessor :current_user

  scope :my_application, -> { where(user_id: Application.current_user.id) }

end
