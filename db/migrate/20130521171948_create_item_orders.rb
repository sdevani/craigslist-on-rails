class CreateItemOrders < ActiveRecord::Migration
  def change
    create_table :item_orders do |t|
      t.references :user
      t.references :item
      t.integer :num_bought

      t.timestamps
    end
    add_index :item_orders, :user_id
    add_index :item_orders, :item_id
  end
end
