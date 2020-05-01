class PurchasesController < ApplicationController
  before_action :get_purchase, only: [:edit, :show, :update, :destroy]

  def index
    @purchases = Purchase.all
  end

  def new
    @purchase = Purchase.new
  end

  def edit
  end

  def show
  end

  def create
    @purchase = Purchase.create(purchase_params)

    if @purchase.save
      redirect_to purchases_path, notice: 'Purchase was successfully created.'
    else
      render :new
    end
  end

  def update
    if @purchase.update(purchase_params)
      redirect_to purchases_path, notice: 'Purchase was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @purchase.destroy
    redirect_to purchases_path, notice: 'Purchase was successfully deleted.'
  end

  private

  def get_purchase
    @purchase = Purchase.find(params[:id])
  end

  def purchase_params
    params.require(:purchase).permit(:store_id, :seller_id, :product_id, :buyer_id)
  end
end
