class AddAddressToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :street_number, :integer
    add_column :properties, :street_name, :string
    add_column :properties, :country, :string
  end
end
