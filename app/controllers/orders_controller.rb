class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show ]

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # POST /orders or /orders.json
  def create
    
  end
end
