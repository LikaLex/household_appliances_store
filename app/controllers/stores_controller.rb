class StoresController < ApplicationController
  before_action :get_store, only: [:show, :edit, :update, :destroy]

  def index
    @stores = Store.all
  end


  def show
  end

  def new
    @store = Store.new
  end

  def edit
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to stores_path, notice: 'Store was successfully created.'
    else
      render :new
    end
  end

  def update
    if @store.update(store_params)
      redirect_to stores_path, notice: 'Store was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @store.destroy
    redirect_to stores_path, notice: 'Store was successfully deleted.'
  end

  private

  def get_store
    @store = Store.find(params[:id])
  end

  def store_params
    params[:store].permit(:name, :town, :street, :house )
  end
end
