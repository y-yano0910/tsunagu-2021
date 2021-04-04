class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  before_action :authenticate_producer!
  before_action :move_to_introductions_index, only: [:edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to producer_path(current_producer.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to producer_path(current_producer.id)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to producer_path(current_producer.id)
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:image, :name, :price, :capacity_id, :main_product_id, :features).merge(producer_id: current_producer.id)
    end

    def move_to_introductions_index 
      redirect_to root_path if @item.user_id != current_user.id
    end
end
