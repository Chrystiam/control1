class ConsumeGarmentsController < ApplicationController

     before_filter :find_consume_garment, :except  => [ :cal_cost ]

     def index
         @consume_garment = ConsumeGarment.new
         @consume_garments = @garment.consume_garments.all
     end

     def show

     end

     def new
         @consume_garment = ConsumeGarment.new
      end

     def edit
         @consume_garments = @garment.consume_garments.all
     end

     def create
         @consume_garment = ConsumeGarment.new(params[:consume_garment])
         @consume_garment.garment_id = @garment.id
         if @consume_garment.save
            @consume_garments = @garment.consume_garments.all
            @consume_garment = ConsumeGarment.new
            respond_to do |format|
               format.js { render 'index' } #index.js.erb
            end
         else
            render :action => :new
         end
     end

     def update
         if @consume_garment.update_attributes(params[:consume_garment])
            @consume_garments = @garment.consume_garments.all
            respond_to do |format|
               format.js { render 'index' } #index.js.erb
            end
         else
            render :action => :edit
         end
     end

     def destroy
         @consume_garment.destroy
         respond_to do |format|
           format.html { redirect_to consume_garments_url }
           format.json { head :no_content }
         end
     end
     
     def cal_cost
         input = Input.where("id = ?",params[:id]).first
         cantidad = params[:cantidad]
         @costo = input.unit_cost * cantidad.to_f
         respond_to do |format|
             format.js { render 'cal_cost' } #cal_cost.js.erb
         end
     end
     
     private
     def find_consume_garment
         @garment = Garment.find(params[:garment_id])
         @consume_garment = ConsumeGarment.find(params[:id]) if params[:id]
     end
  
end
