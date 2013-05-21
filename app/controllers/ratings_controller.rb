class RatingsController < ApplicationController
  def create
    @rating = current_user.ratings.find_or_initialize_by_item_id(params[:item_id])
    @rating.rating = params[:rating][:rating]
    @rating.save
    @item = Item.find(params[:item_id])
    @item.update_rating
    @item.save

    redirect_to @item
  end
end
