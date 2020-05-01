class CommodityUnitsController < ApplicationController
  before_action :get_commodity_unit, only: [:edit, :show, :update, :destroy]

  def index
    @commodity_units = CommodityUnit.all
  end

  def new
    @commodity_unit = CommodityUnit.new
  end

  def edit
  end

  def show
  end

  def create
    @commodity_unit = CommodityUnit.create(commodity_unit_params)

    if @commodity_unit.save
      redirect_to commodity_units_path, notice: 'Commodity Unit was successfully created.'
    else
      render :new
    end
  end

  def update
    if @commodity_unit.update(commodity_unit_params)
      redirect_to commodity_units_path, notice: 'Commodity Unit was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @commodity_unit.destroy
    redirect_to commodity_units_path, notice: 'Commodity Unit was successfully deleted.'
  end

  private

  def get_commodity_unit
    @commodity_unit = CommodityUnit.find(params[:id])
  end

  def commodity_unit_params
    params.require(:commodity_unit).permit(:count, :storage_id, :product_id)
  end
end
