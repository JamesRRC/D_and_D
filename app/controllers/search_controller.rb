# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:q]
    @accessories = Accessory.where('accessory_name LIKE ?', "%#{@query}%")
  end
end
