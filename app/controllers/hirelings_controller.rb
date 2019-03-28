# frozen_string_literal: true

class HirelingsController < ApplicationController
  before_action :set_hireling, only: %i[show edit update destroy]

  # GET /hirelings
  # GET /hirelings.json
  def index
    @hirelings = Hireling.all
    @hire_classes = HireClass.all
  end

  # GET /hirelings/1
  # GET /hirelings/1.json
  def show; end

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
