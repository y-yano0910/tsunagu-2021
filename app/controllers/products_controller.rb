class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  before_action :authenticate_producer!
  # before_action :move_to_introductions_index

  def index
    @products = Producer.product.order('created_at DESC')
  end

  # GET /products/1 or /products/1.json
  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  # GET /products/1/edit
  def edit
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    @product.update(product_params)
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:image, :name, :price, :capacity_id, :main_product_id, :features).merge(producer_id: current_producer.id)
    end

    # def move_to_introductions_index 
    #   redirect_to root_path if @item.user_id != current_user.id
    # end
end
