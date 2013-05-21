class AddRatingToItem < ActiveRecord::Migration
  def change
    add_column :items, :rating, :float, default: 5.0
  end
end
