class ProducersController < ApplicationController
  def show
    @producer = Producer.find(params[:id])
    @product = @producer.products.order('created_at DESC')
  end
end
