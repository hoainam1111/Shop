class CreateCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.bigint :parent_id

      t.timestamps
    end
    add_index :categories, :parent_id
    add_index :categories, :name
  end
end
