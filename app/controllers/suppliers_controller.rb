class SuppliersController < ApplicationController

  before_filter :find_ids
  
  def index
    @suppliers = Supplier.paginate(:page => params[:page]).per_page(3)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @suppliers }
    end
  end

  def show

  end

  def new
    @supplier = Supplier.new

  end

  def edit

  end

  def create
    @supplier = Supplier.new(params[:supplier])
    @supplier.save
  end

  def update
    render :action => :edit unless @supplier.update_attributes(params[:supplier])
    @supplier.save
  end


  def destroy
    @supplier.destroy
  end

  private
  def find_ids 
      @supplier = Supplier.find(params[:id]) if params[:id]
  end
end
