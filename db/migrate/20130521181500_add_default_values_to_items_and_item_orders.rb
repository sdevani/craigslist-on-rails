class AddDefaultValuesToItemsAndItemOrders < ActiveRecord::Migration
  def change
    change_column :items, :count, :integer, default: 0
    change_column :item_orders, :num_bought, :integer, default: 0
  end
end
