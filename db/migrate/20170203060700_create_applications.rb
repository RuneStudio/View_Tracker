class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :title
      t.belongs_to :user, index: true
      t.belongs_to :property, index: true
      t.timestamps
    end
  end
end
