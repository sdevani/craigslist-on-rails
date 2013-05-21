module ItemOrdersHelper
  def buy_button(item)
    form_for(ItemOrder.new,
      url: item_item_order_path(item),
      method: :post) do |f|

      f.submit 'Buy Now'

    end
      
  end
end
