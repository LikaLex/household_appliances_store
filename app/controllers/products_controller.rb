class ProductsController < ApplicationController

  before_action :get_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end


  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to products_path, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @product.destroy
    redirect_to products_path, notice: 'Product was successfully deleted.'
  end

  private

  def get_product
    @product = Product.find(params[:id])
  end

  def product_params
    params[:product].permit(:name, :manufacturer_id, :kind, :date_of_issue, :price, :number, :guarantee_period, :specific_characteristic, :specific_characteristic_value )
  end

end