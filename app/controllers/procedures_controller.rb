class ProceduresController < ApplicationController

  before_filter :find_ids

  def index
      @procedures = @production_order.procedures.all 
  end

  def show

  end

  def new
      @procedure = Procedure.new
  end

  def edit
     
  end

  def create
      @procedure = Procedure.new(params[:procedure])
      @procedure.production_order_id = @production_order.id
      @procedure.print_month = Production.cut(@procedure.print_end)
      @procedure.embroidery_month = Production.cut(@procedure.embroidery_end)
      @procedure.assembly_month = Production.cut(@procedure.assembly_end)
      @procedure.outline_month = Production.cut(@procedure.outline_end)
      @procedure.cutting_month = Production.cut(@procedure.cutting_end)
      @procedure.labeled_month = Production.cut(@procedure.labeled_end)
      render :action => :new unless @procedure.save
  end

  def update
      @procedure.print_month = Production.cut(@procedure.print_end)
      @procedure.embroidery_month = Production.cut(@procedure.embroidery_end)
      @procedure.assembly_month = Production.cut(@procedure.assembly_end)
      @procedure.outline_month = Production.cut(@procedure.outline_end)
      @procedure.cutting_month = Production.cut(@procedure.cutting_end)
      @procedure.labeled_month = Production.cut(@procedure.labeled_end)
      render :action => :edit unless @procedure.update_attributes(params[:procedure])
      @procedure.save
  end

  def destroy
      @procedure.destroy
  end
  
  def find_ids 
      @production_order = ProductionOrder.find(params[:production_order_id])
      @procedure = Procedure.find(params[:id]) if params[:id]
  end  

end
