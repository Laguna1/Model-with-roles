class VizitsController < ApplicationController
  before_action :set_vizit, only: %i[ show edit update destroy ]

  # GET /vizits or /vizits.json
  def index
    @vizits = Vizit.all
  end

  # GET /vizits/1 or /vizits/1.json
  def show
  end

  # GET /vizits/new
  def new
    @vizit = Vizit.new
  end

  # GET /vizits/1/edit
  def edit
  end

  # POST /vizits or /vizits.json
  def create
    @vizit = Vizit.new(vizit_params)

    respond_to do |format|
      if @vizit.save
        format.html { redirect_to @vizit, notice: "Vizit was successfully created." }
        format.json { render :show, status: :created, location: @vizit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vizit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vizits/1 or /vizits/1.json
  def update
    respond_to do |format|
      if @vizit.update(vizit_params)
        format.html { redirect_to @vizit, notice: "Vizit was successfully updated." }
        format.json { render :show, status: :ok, location: @vizit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vizit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vizits/1 or /vizits/1.json
  def destroy
    @vizit.destroy
    respond_to do |format|
      format.html { redirect_to vizits_url, notice: "Vizit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vizit
      @vizit = Vizit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vizit_params
      params.require(:vizit).permit(:date, :place, :notes, :user_id)
    end
end
