class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :customer_id
      t.date :dateOfPurchase
      t.string :deliveryAddress
      t.string :creditCard

      t.timestamps
    end
  end
end
