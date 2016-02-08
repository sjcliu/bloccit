class WontonsController < ApplicationController
  before_action :set_wonton, only: [:show, :edit, :update, :destroy]

  # GET /wontons
  def index
    @wontons = Wonton.all
  end

  # GET /wontons/1
  def show
  end

  # GET /wontons/new
  def new
    @wonton = Wonton.new
  end

  # GET /wontons/1/edit
  def edit
  end

  # POST /wontons
  def create
    @wonton = Wonton.new(wonton_params)

    if @wonton.save
      redirect_to @wonton, notice: 'Wonton was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wontons/1
  def update
    if @wonton.update(wonton_params)
      redirect_to @wonton, notice: 'Wonton was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wontons/1
  def destroy
    @wonton.destroy
    redirect_to wontons_url, notice: 'Wonton was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wonton
      @wonton = Wonton.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wonton_params
      params.require(:wonton).permit(:title, :copy, :price)
    end
end
