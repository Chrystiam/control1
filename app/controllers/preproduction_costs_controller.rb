class PreproductionCostsController < ApplicationController

    before_filter :find_ids

    def index
        @preproduction_costs = @production_order.preproduction_costs.page(params[:page]).per_page(3)
    end

   def show

   end

   def new
      @preproduction_cost = PreproductionCost.new
   end

   def edit
      
   end

   def create
      @preproduction_cost = PreproductionCost.new(params[:preproduction_cost])
      @preproduction_cost.production_order_id = @production_order.id
      render :action => :new unless @preproduction_cost.save
   end

   def update
      render :action => :edit unless @preproduction_cost.update_attributes(params[:preproduction_cost])
   end

   def destroy
      @preproduction_cost.destroy
   end
  
   def find_ids 
      @production_order = ProductionOrder.find(params[:production_order_id])
      @preproduction_cost = PreproductionCost.find(params[:id]) if params[:id]
   end  

end
