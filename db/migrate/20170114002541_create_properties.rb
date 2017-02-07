class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.text :description
      t.string :publish
      t.belongs_to :user, index: true

      t.timestamps
    end

    add_index :properties, [:user_id, :created_at]
  end
end
