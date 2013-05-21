class Item < ActiveRecord::Base
  attr_accessible :cost, :description, :title, :count
  belongs_to :user
  has_many :item_orders
  has_many :ratings
end
