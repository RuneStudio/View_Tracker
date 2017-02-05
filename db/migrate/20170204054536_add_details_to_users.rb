class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :current_address, :string
    add_column :users, :birthday, :string
    add_column :users, :identity_type, :string
    add_column :users, :identify_number, :string
    add_column :users, :phone_number, :integer
    add_column :users, :mobile_number, :integer
    add_column :users, :cv, :string
    add_column :users, :identidy_image, :string
    add_column :users, :note, :string
    add_column :users, :question_1, :string
    add_column :users, :question_2, :string
    add_column :users, :question_3, :string
    add_column :users, :question_4, :string
    add_column :users, :question_5, :string
    add_column :users, :question_6, :string
    add_column :users, :question_7, :string
    add_column :users, :question_8, :string
  end
end
