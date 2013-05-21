class ItemOrder < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  attr_accessible :num_bought
end
