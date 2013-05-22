class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  attr_accessible :rating
  validates_uniqueness_of :item_id, scope: :user_id

  def as_json(options = {})
    { user_id: user_id,
      item_id: item_id,
      rating_average: item.rating }
  end
end
