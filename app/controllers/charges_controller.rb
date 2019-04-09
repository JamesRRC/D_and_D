class ChargesController < ApplicationController

  @provinces = Province.all
  def new
    @amount = (current_order.sub_total * 100).to_i
  end

  def create
    # Amount in cents
    @amount = (current_order.sub_total * 100).to_i


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
