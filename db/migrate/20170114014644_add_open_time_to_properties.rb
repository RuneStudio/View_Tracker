class AddOpenTimeToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :city, :string
    add_column :properties, :suburb, :string
    add_column :properties, :available, :string
    add_column :properties, :furnishings, :string
    add_column :properties, :application, :string
    add_column :properties, :parking, :string
    add_column :properties, :feature, :string
    add_column :properties, :priority, :string
    add_column :properties, :ideal_flatmate, :string
    add_column :properties, :current_flatmate, :string
    add_column :properties, :bedrooms, :integer
    add_column :properties, :bathrooms, :integer
    add_column :properties, :floor_area, :integer
    add_column :properties, :smokers_allow, :boolean
    add_column :properties, :pets_allow, :boolean
  end
end
