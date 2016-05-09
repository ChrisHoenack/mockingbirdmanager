class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @apartments = Apartment.all
  end

  def show
  end

  def new
    @apartment = Apartment.new
  end

  def edit
  end

  def create
  end

  def update
    if @apartment.update(apartment_params)
      redirect_to @apartment, notice: 'Apartment was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    def apartment_params
      params.require(:apartment).permit(:building, :unit, :paint_scheme, :kitchen_counter, :bathroom_sink, :refrigerator_type, :ac_filter, :ac_maint, :refrigerator_maint, :notes)
    end
end
