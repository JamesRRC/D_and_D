class CheckoutController < ApplicationController

  def check_out
    @check_out = @order
  end
end
