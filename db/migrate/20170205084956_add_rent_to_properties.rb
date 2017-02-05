class AddRentToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :rent, :integer
    add_column :properties, :list_type, :string
    add_column :properties, :house_type, :string
    add_column :properties, :available_date, :datetime
    add_column :properties, :contract_length, :integer
  end
end
