# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_variables

  def set_variables
    @hire_class_navs = HireClass.all
  end
end
