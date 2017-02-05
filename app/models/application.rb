class Application < ApplicationRecord
  belongs_to :user
  belongs_to :property
  cattr_accessor :current_user

  scope :my_application, -> { where(user_id: Application.current_user.id) }

end
