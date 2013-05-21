class Item < ActiveRecord::Base
  attr_accessible :cost, :description, :title
  belongs_to :user
end
