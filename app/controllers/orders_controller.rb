class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:accessories_ordered, :price_total)
    end
end

