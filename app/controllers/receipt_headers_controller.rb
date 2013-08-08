class ReceiptHeadersController < ApplicationController

 before_filter :find_ids

 autocomplete :city, :name, :full => true
 
  def index
    @receipt_headers = ReceiptHeader.paginate(:page => params[:page]).per_page(4)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @receipt_headers }
    end
  end

  def show
    
  end

  def new
      @receipt_header = ReceiptHeader.new
  end

  def edit

  end

  def create
      @receipt_header = ReceiptHeader.new(params[:receipt_header])
      @receipt_header.user_id = current_user.id
      @receipt_header.save
  end

  def update
      @receipt_header.user_id = current_user.id
      render :action => :edit unless @receipt_header.update_attributes(params[:receipt_header])
      @receipt_header.save
  end

  def destroy
      @receipt_header.destroy
  end
    
  private
  def find_ids 
      @receipt_header = ReceiptHeader.find(params[:id]) if params[:id]
  end
end