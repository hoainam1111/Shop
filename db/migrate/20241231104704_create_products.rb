class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :stock
      t.references :category, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
    add_index :products, :name
    add_index :products, :status
  end
end
