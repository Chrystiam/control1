class PurchasesController < ApplicationController

  before_filter :find_ids
   
  def index
    @purchases = Purchase.paginate(:page => params[:page]).per_page(4)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchases }
    end
  end

  def show

  end

  def new
    @purchase = Purchase.new

  end


  def edit
    
  end

  def create
    @purchase = Purchase.new(params[:purchase])
    @purchase.save
  end


  def update
    render :action => :edit unless @purchase.update_attributes(params[:purchase])
    @purchase.save
  end


  def destroy
    @purchase.destroy
  end

  private
  def find_ids 
      @purchase = Purchase.find(params[:id]) if params[:id]
  end
end
