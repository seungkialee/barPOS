class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :category
      t.string :name
      t.decimal :price, precision: 12, scale: 3
      t.string :img_url
      t.boolean :active
      t.string :info

      t.timestamps
    end
  end
end
