class Item < ActiveRecord::Base
  attr_accessible :cost, :description, :title
  belongs_to :user
  has_many :item_orders
end
