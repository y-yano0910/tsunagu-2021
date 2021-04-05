class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  before_action :authenticate_producer!, except: %i[ index search show ]
  before_action :move_to_producers_show, only: %i[ edit update destroy ]
  before_action :search_product, only: %i[ index search ]

  def index
    @products = Product.includes(:producer).page(params[:page]).per(18).order('updated_at DESC')
    set_product_column
    unless current_customer
      redirect_to root_path
    end
  end

  def search
    @results = @p.result.includes(:producer).page(params[:page]).per(18).order('updated_at DESC')
  end

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
    unless current_customer || @product.producer == current_producer
      redirect_to root_path
    end
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

    def move_to_producers_show 
      unless @product.producer == current_producer
        redirect_to producer_path(current_producer.id)
      end
    end
    
    def search_product
      @p = Product.ransack(params[:q])
    end

    def set_product_column
      @product_name = Product.select("name").distinct
    end

end
