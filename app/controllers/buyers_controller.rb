class BuyersController < ApplicationController
  before_action :get_buyer, only: [:edit, :show, :update, :destroy]

  def index
    @buyers = Buyer.all
  end

  def new
    @buyer = Buyer.new
  end

  def edit
  end

  def show
  end

  def create
    @buyer = Buyer.create(buyer_params)

    if @buyer.save
      redirect_to buyers_path, notice: 'Buyer was successfully created.'
    else
      render :new
    end
  end

  def update
    if @buyer.update(buyer_params)
      redirect_to buyers_path, notice: 'Buyer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @buyer.destroy
    redirect_to buyers_path, notice: 'Buyer was successfully deleted.'
  end

  private

  def get_buyer
    @buyer = Buyer.find(params[:id])
  end

  def buyer_params
    params.require(:buyer).permit(:first_name, :last_name, :passport_seria, :passport_number, :phone )
  end
end
