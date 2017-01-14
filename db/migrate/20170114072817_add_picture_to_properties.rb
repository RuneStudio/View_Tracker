class AddPictureToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :picture, :string
  end
end
