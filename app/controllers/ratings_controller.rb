class RatingsController < ApplicationController
  def create
    @rating = current_user.ratings.find_or_initialize_by_item_id(params[:item_id])
    @rating.rating = params[:rating]
    @rating.save

    redirect_to Item.find(params[:item_id])
  end
end
