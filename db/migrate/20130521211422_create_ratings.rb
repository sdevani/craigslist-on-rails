class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.references :user
      t.references :item

      t.timestamps
    end
    add_index :ratings, :user_id
    add_index :ratings, :item_id
  end
end
