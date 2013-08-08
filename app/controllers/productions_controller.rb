class ProductionsController < ApplicationController

  before_filter :find_production

  def index
    @productions = Production.page(params[:page]).per_page(3)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productions }
    end
  end

  def show
  end

  def new
      @production = Production.new
  end

  def edit
  end

  def create
      @production = Production.new(params[:production])
      @production.month = Production.cut(@production.date_out)
      render :action => :new unless @production.save

  end

  def bars 
      #@data = Production.count(:group=>"month", :order => "month")    
                             
      @data = Production.sum(:amount_out, :group => :month) 
  end

  def update
      render :action => :edit unless @production.update_attributes(params[:production])
      @production.month = Production.cut(@production.date_out)
      @production.save
  end

  def destroy
      @production.destroy
  end

  private
  def find_production
    @production = Production.find(params[:id]) if params[:id]
  end   
  
end

