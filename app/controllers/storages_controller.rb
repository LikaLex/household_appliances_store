class StoragesController < ApplicationController
  before_action :get_storage, only: [:show, :edit, :update, :destroy]

  def index
    @storages = Storage.all
  end


  def show
  end

  def new
    @storage = Storage.new
  end

  def edit
  end

  def create
    @storage = Storage.new(storage_params)
    if @storage.save
      redirect_to storages_path, notice: 'Storage was successfully created.'
    else
      render :new
    end
  end

  def update
    if @storage.update(storage_params)
      redirect_to storages_path, notice: 'Storage was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @storage.destroy
    redirect_to storages_path, notice: 'Storage was successfully deleted.'
  end

  private

  def get_storage
    @storage = Storage.find(params[:id])
  end

  def storage_params
    params[:storage].permit(:name, :number, :store_id )
  end
end
