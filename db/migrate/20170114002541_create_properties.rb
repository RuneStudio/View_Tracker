class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :address
      t.text :description
      t.string :publish

      t.timestamps
    end
  end
end
