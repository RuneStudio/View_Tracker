class AddDetailsToApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :first_name, :string
    add_column :applications, :last_name, :string
    add_column :applications, :current_address, :string
    add_column :applications, :birthday, :string
    add_column :applications, :identity_type, :string
    add_column :applications, :identify_number, :string
    add_column :applications, :phone_number, :integer
    add_column :applications, :mobile_number, :integer
    add_column :applications, :cv, :string
    add_column :applications, :identidy_image, :string
    add_column :applications, :note, :string
    add_column :applications, :question_1, :string
    add_column :applications, :question_2, :string
    add_column :applications, :question_3, :string
    add_column :applications, :question_4, :string
    add_column :applications, :question_5, :string
    add_column :applications, :question_6, :string
    add_column :applications, :question_7, :string
    add_column :applications, :question_8, :string
    add_column :applications, :landlord_status, :boolean
    add_column :applications, :tenant_status, :boolean
    add_column :applications, :offer_status, :boolean

  end
end
