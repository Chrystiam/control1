class ProductionOrdersController < ApplicationController
    
    before_filter :find_ids

    def index
      @production_orders = ProductionOrder.page(params[:page]).per_page(3)
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @production_orders }
      end
    end

    def show

    end

    def new
        @production_order = ProductionOrder.new
    end

    def edit

    end

    def create
        @production_order = ProductionOrder.new(params[:production_order])
        render :action => :new unless @production_order.save
    end

    def update
        render :action => :edit unless @production_order.update_attributes(params[:production_order])
    end

    def destroy
        @production_order.destroy
    end

    def find_ids
        @production_order = ProductionOrder.find(params[:id]) if params[:id]
    end    
end
