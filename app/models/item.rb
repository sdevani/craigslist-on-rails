class Item < ActiveRecord::Base
  attr_accessible :cost, :description, :title, :count
  belongs_to :user
  has_many :item_orders, dependent: :destroy
  has_many :ratings, dependent: :destroy

  default_scope order: 'created_at DESC'

  def update_rating
    rating_list = self.ratings
    if rating_list.any?
      rating_total = 0.0
      rating_list.each do |r|
        rating_total = rating_total + r.rating
      end
      self.rating = rating_total/rating_list.size
    end
  end
end
