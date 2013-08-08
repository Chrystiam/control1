class RegionsController < ApplicationController

  before_filter :find_id

  def index
   @regions = Region.page(params[:page]).per_page(3).order('id DESC')
     respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @regions }
   end 
  end

  def show

  end

  def new
    @region = Region.new

  end

  def edit

  end

  def create
    @region =  Region.new(params[:region])
    render :action => :new unless @region.save
  end

  def update
    render :action => :edit unless @region.update_attributes(params[:region])
    @region.save
  end

  def destroy
    @region.destroy
  end

  def find_id
    @region = Region.find(params[:id]) if params[:id]
  end
  
end
