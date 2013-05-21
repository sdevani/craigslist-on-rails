class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  attr_accessible :rating
end
