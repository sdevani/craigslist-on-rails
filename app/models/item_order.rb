class ItemOrder < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  attr_accessible :num_bought
  validates_uniqueness_of :item_id, scope: :user_id
end
