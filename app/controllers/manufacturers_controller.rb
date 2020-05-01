class ManufacturersController < ApplicationController
  before_action :get_manufacturer, only: [:edit, :show, :update, :destroy]

  def index
    @manufacturers = Manufacturer.all.order(:name)
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def edit
  end

  def show
  end

  def create
    @manufacturer = Manufacturer.create(manufacturer_params)

    if @manufacturer.save
      redirect_to manufacturers_path, notice: 'Manufacturer was successfully created.'
    else
      render :new
    end
  end

  def update
    if @manufacturer.update(manufacturer_params)
      redirect_to manufacturers_path, notice: 'Manufacturer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @manufacturer.destroy
    redirect_to manufacturers_path, notice: 'Manufacturer was successfully deleted.'
  end

  private

  def get_manufacturer
    @manufacturer = Manufacturer.find(params[:id])
  end

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :place, :date_of_foundation)
  end
end
