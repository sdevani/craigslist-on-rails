class ItemOrdersController < ApplicationController
  before_filter :authenticate_user!
  def create
    @item = Item.find_by_id(params[:item_id])
    if current_user == @item.user
      redirect_to current_user, notice: "You cannot buy your own product"
    end

    @order = current_user.item_orders.find_or_initialize_by_item_id(params[:item_id])
    @order.increment!(:num_bought)

    @item.decrement!(:count)

    redirect_to current_user, notice: "You've bought this item!"
  end
end
