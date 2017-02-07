class Property < ApplicationRecord
  has_many :applications
  belongs_to :user
  has_many :open_home_times
  mount_uploader :picture, PictureUploader
  validates :description, presence: true
  require 'elasticsearch'

  # client = Elasticsearch::Client.new log: true
  #
  # client.search q: 'test'



  LIST_TYPES = ["For Rent", "For Sell", "Flatmate Wanted"];

  HOUSE_TYPES = ["House", "Unit", "Townhouse", "Apartment", "Others"];

  def address
    address = ''
    unless street_number.nil?
      address << street_number.to_s
    end
    unless suburb.nil?
      street_name << ', ' + suburb
    end
    unless city.nil?
      street_name << ', ' + city
    end
  end

  def full_address
    address = ''
    unless street_number.nil?
      address << street_number.to_s
    end
    unless street_name.nil?
      address << ', ' + street_name
    end
    unless suburb.nil?
      address << ', ' + suburb
    end
    unless city.nil?
      address << ', ' + city
    end
  end

  def header_details
    details = ''

    unless bedrooms.nil?
      if bedrooms > 0
        details << bedrooms.to_s + ' Bedrooms'
      else
        details << bedrooms.to_s + ' Bedroom'
      end
    end

    unless house_type.nil?
      details << ' ' + house_type
    end
  end

  def price
    price = ''

    unless rent.nil?
      price << '$' + rent.to_s + ' per week'
    end
  end

end
