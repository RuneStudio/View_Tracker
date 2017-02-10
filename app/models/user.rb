class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :properties
  has_many :applications
  has_many :open_home_times
  validates_presence_of :first_name, :last_name

  def realtime_user_id
    return current_user ? current_user.id : nil
  end

  def full_name
    return first_name + ' ' + last_name
  end

end
