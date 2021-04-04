class ProducersController < ApplicationController
  before_action :authenticate_producer!

  def show
    @producer = Producer.find(params[:id])
    @product = @producer.products.order('created_at DESC')
    if @producer == current_producer
    else
      redirect_to producer_path(current_producer.id)
    end
  end

end
