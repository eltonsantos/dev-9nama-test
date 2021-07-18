class OrdersController < ApplicationController

  # GET /orders or /orders.json
  def index
    @orders = Order.all.order(id: :desc)
  end

  # GET /orders/1 or /orders/1.json
  def show
    @order = Order.includes(:items).find(params[:id])
  end

  def create
    order_file = params[:file]
    result = ParseOrderFile.call(file: order_file, locale: :pt)
    @order = result.order 
    respond_to do |format|
      format.html { redirect_to action: :index }
    end
  end
end
