class CreateOpenHomeTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :open_home_times do |t|
      t.belongs_to :user, index: true
      t.belongs_to :property, index: true
      t.belongs_to :application, index: true
      t.datetime :time

      t.timestamps
    end
  end
end
