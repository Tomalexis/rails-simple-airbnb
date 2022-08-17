class FlatsController < ApplicationController
  before_action :set_flat, only: %i[new create update destroy]
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path(@flat), status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :price_per_night, :description, :number_of_guests)
  end

  def set_restaurant
    @flat = Flat.find(params[:id])
  end
end
