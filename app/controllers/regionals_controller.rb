class RegionalsController < ApplicationController

  before_filter :find_id

  def index 
   @regionals = Regional.page(params[:page]).per_page(3).order('id DESC')
     respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @regionals }
     end
  end

  def show

  end

  def new
    @regional = Regional.new

  end

  def edit

  end

  def create
    @regional = Regional.new(params[:regional])
    render :action => :new unless @regional.save
  end

  def update
    render :action => :edit unless @regional.update_attributes(params[:regional])
    @regional.save
  end

  def destroy
    @regional.destroy
  end
  
  private
  def find_id
    @regional = Regional.find(params[:id]) if params[:id]
  end  
end
