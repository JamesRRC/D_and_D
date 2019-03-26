# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    params = [:q]
    @accessories = Accessory.where('name LIKE ?')
  end
end
