class ChargesController < ApplicationController

  # hire_classes = HireClass.where(name: params['hire_class'])
  def new
    $tax = Province.where(id: params['provinces']).first
    @amount = ((current_order.sub_total) * (1 + (($tax.pst + $tax.gst + $tax.hst) / 100 )) * 100).to_i

    # flash[:amount] = @amount
    flash[:tax] = ($tax.pst + $tax.gst + $tax.hst / 100)
  end

  def create
    # $tax = flash[:tax]
    # @amount = ((current_order.sub_total) * (1 + (($tax.to_i) / 100 )) * 100).to_i
    @amount = ((current_order.sub_total) * (1 + (flash[:tax].to_d)) * 100).to_i

    
    session[:order_id] = nil

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
