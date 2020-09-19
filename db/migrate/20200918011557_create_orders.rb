class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :buyer_id, null: false
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.timestamps
    end
  end
end
