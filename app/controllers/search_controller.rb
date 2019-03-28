# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:q]
    @accessories_search = Accessory.where('accessory_name LIKE ?', "%#{@query}%")

    @hirelings = Hireling.where('name LIKE ?', "%#{@query}%")

    hire_classes = HireClass.where('class_name LIKE ?', "%#{@query}%")
    @count = hire_classes.count
    if @count > 0
      @hire_classes = Hireling.where('hire_class_id = ?', hire_classes.first.id)
    end
  end
end
