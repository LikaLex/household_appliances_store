class SellersController < ApplicationController
  before_action :get_seller, only: [:show, :edit, :update, :destroy]

  def index
    @sellers = Seller.all
  end


  def show
  end

  def new
    @seller = Seller.new
  end

  def edit
  end

  def create
    @seller = Seller.new(seller_params)
    if @seller.save
      redirect_to sellers_path, notice: 'Seller was successfully created.'
    else
      render :new
    end
  end

  def update
    if @seller.update(seller_params)
      redirect_to sellers_path, notice: 'Seller was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @seller.destroy
    redirect_to sellers_path, notice: 'Seller was successfully deleted.'
  end

  private

  def get_seller
    @seller = Seller.find(params[:id])
  end

  def seller_params
    params[:seller].permit(:first_name, :last_name, :employment_contract_number, :store_id )
  end
end
