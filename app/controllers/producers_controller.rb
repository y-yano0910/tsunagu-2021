class ProducersController < ApplicationController
  before_action :authenticate_producer!, except: :show

  def show
    @producer = Producer.find(params[:id])
    @product = @producer.products.page(params[:page]).per(18).order('created_at DESC')
    unless current_customer || (@producer == current_producer)
      redirect_to producer_path(current_producer.id)
    end
  end

end
