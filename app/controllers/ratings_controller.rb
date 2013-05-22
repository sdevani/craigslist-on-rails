class RatingsController < ApplicationController
  def create
    @rating = current_user.ratings.find_or_initialize_by_item_id(params[:item_id])
    @rating.rating = params[:rating][:rating]
    @rating.save
    @item = Item.find(params[:item_id])
    @item.update_rating
    @item.save

    respond_to do |format|
      format.html do
        redirect_to @item
      end
      format.json do
        render json: @rating
      end
    end

  end
end
