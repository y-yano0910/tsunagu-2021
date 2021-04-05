class ProducersController < ApplicationController
  before_action :authenticate_producer!

  def show
    @producer = Producer.find(params[:id])
    @product = @producer.products.page(params[:page]).per(18).order('created_at DESC')
    unless @producer == current_producer
      redirect_to producer_path(current_producer.id)
    end
  end

end
