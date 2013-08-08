class PurchaseDescriptionsController < ApplicationController

  before_filter :find_ids

  def index
    @purchase_descriptions = @purchase.purchase_descriptions.all
    @purchase_description = PurchaseDescription.new
  end

  def show

  end

  def new
    @purchase_description = PurchaseDescription.new
  end

  def edit
     @purchase_descriptions = @purchase.purchase_descriptions.all
  end

  def create
    @purchase_description = PurchaseDescription.new(params[:purchase_description])
    @purchase_description.purchase_id = @purchase.id
    if @purchase_description.save
            @purchase_descriptions = @purchase.purchase_descriptions.all
            @purchase_description = PurchaseDescription.new

            respond_to do |format|
               format.js { render 'index' } #index.js.erb
            end
         else
            render :action => :new
         end
  end

  def update
    if @purchase_description.update_attributes(params[:purchase_description])
      @purchase_descriptions = @purchase.purchase_descriptions.all
      respond_to do |format|
            format.js { render 'index' } #index.js.erb
      end
          else
            render :action => :edit
    end
  end

  def destroy
    @purchase_description.destroy
    respond_to do |format|
           format.js { render 'index' } #index.js.erb
    end
  end

  private
  def find_ids 
      @purchase = Purchase.find(params[:purchase_id])
      @purchase_description = PurchaseDescription.find(params[:id]) if params[:id]
  end
end
