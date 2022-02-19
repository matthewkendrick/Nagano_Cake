class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id,        null: false, default: ""
      t.string  :zip_code,           null: false, default: ""
      t.string  :shipping_address,   null: false, default: ""
      t.integer :shipping_cost,      null: false, default: ""
      t.integer :amount_billed,      null: false, default: ""
      t.integer :payment_method,     null: false, default: 0
      t.integer :status,             null: false, default: 0

      t.timestamps
    end
  end
end
