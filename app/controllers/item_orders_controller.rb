class ItemOrdersController < ApplicationController
  before_filter :authenticate_user!
  def create
    @order = current_user.item_orders.find_or_initialize_by_item_id(params[:item_id])
    @order.increment!(:num_bought)

    @item = Item.find_by_id(params[:item_id])
    @item.decrement!(:count)

    redirect_to current_user
  end
end
