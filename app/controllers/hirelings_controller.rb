# frozen_string_literal: true

class HirelingsController < ApplicationController
  before_action :set_hireling, only: %i[show edit update destroy]

  # GET /hirelings
  # GET /hirelings.json
  def index
    @hirelings = if params['hire_class'].present?
                   Hireling.where(hire_class: params['hire_class'])
                 else
                   Hireling.all
                 end
  end

  # GET /hirelings/1
  # GET /hirelings/1.json
  def show; end

  def hire_class
    hire_classes = HireClass.where(name: params['hire_class'])
    @count = hire_classes.count
    if @count > 0
      @hirelings = Hireling.where('hire_class_id = ?', hire_classes.first.id)
    end
    # render status: 200, json: { message: @hirelings.as_json }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hireling
    @hireling = Hireling.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def hireling_params
    params.require(:hireling).permit(:name, :class)
  end
end
