class ReceiptDescriptionsController < ApplicationController

  before_filter :find_ids, :except  => [ :calc ]

  def index
    @receipt_description = ReceiptDescription.new
    @receipt_descriptions = @receipt_header.receipt_descriptions.all
    
    if params[:format] == 'pdf' then
      @str = ReceiptHeader.cut(@receipt_header.created_at)
      output = ReceiptPdf.new(@str, @receipt_header, @receipt_descriptions, view_context)
      send_data output.render, :filename => "receipt_#{@receipt_header.id}.pdf", :type => "application/pdf", 
                               :disposition => "inline"
    end
  end

  def show

  end

  def new
    @receipt_description = ReceiptDescription.new
  end

  def edit
     @receipt_descriptions = @receipt_header.receipt_descriptions.all
  end

  def create
    @receipt_description = ReceiptDescription.new(params[:receipt_description])
    @receipt_description.receipt_header_id = @receipt_header.id
    if @receipt_description.save
            @receipt_descriptions = @receipt_header.receipt_descriptions.all
            @receipt_description = ReceiptDescription.new

            respond_to do |format|
               format.js { render 'index' } #index.js.erb
            end
         else
            render :action => :new
         end
  end

  def update
    if @receipt_description.update_attributes(params[:receipt_description])
      @receipt_descriptions = @receipt_header.receipt_descriptions.all
      respond_to do |format|
            format.js { render 'index' } #index.js.erb
      end
          else
            render :action => :edit
    end
  end

  def destroy
    @receipt_description.destroy
    respond_to do |format|
           format.js { render 'index' } #index.js.erb
    end
  end

  def calc
         garment = Garment.where("id = ?",params[:id]).first
         cantidad = params[:amount]
         @value = garment.stock_price * cantidad.to_f
         @unity_value = garment.stock_price
         respond_to do |format|
             format.js { render 'calc' } #calc.js.erb
         end
  end

  private
  def find_ids 
      @receipt_header = ReceiptHeader.find(params[:receipt_header_id])
      @receipt_description = ReceiptDescription.find(params[:id]) if params[:id]
  end  
end
