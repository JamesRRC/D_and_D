class HirelingsController < ApplicationController
  before_action :set_hireling, only: [:show, :edit, :update, :destroy]

  # GET /hirelings
  # GET /hirelings.json
  def index
    @hirelings = Hireling.all
  end

  # GET /hirelings/1
  # GET /hirelings/1.json
  def show
  end

  # GET /hirelings/new
  def new
    @hireling = Hireling.new
  end

  # GET /hirelings/1/edit
  def edit
  end

  # POST /hirelings
  # POST /hirelings.json
  def create
    @hireling = Hireling.new(hireling_params)

    respond_to do |format|
      if @hireling.save
        format.html { redirect_to @hireling, notice: 'Hireling was successfully created.' }
        format.json { render :show, status: :created, location: @hireling }
      else
        format.html { render :new }
        format.json { render json: @hireling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hirelings/1
  # PATCH/PUT /hirelings/1.json
  def update
    respond_to do |format|
      if @hireling.update(hireling_params)
        format.html { redirect_to @hireling, notice: 'Hireling was successfully updated.' }
        format.json { render :show, status: :ok, location: @hireling }
      else
        format.html { render :edit }
        format.json { render json: @hireling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hirelings/1
  # DELETE /hirelings/1.json
  def destroy
    @hireling.destroy
    respond_to do |format|
      format.html { redirect_to hirelings_url, notice: 'Hireling was successfully destroyed.' }
      format.json { head :no_content }
    end
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
