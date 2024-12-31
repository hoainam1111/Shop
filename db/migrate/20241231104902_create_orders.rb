class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.decimal :total_amount
      t.string :shipping_address
      t.string :payment_status

      t.timestamps
    end
  end
end
