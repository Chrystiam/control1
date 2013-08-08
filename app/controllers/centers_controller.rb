class CentersController < ApplicationController

  def index
      @centers = Center.paginate(:page => params[:page]).per_page(3)
  end

  def show
      @center = Center.find(params[:id])
  end

  def new
      @center = Center.new
  end

  def edit
    @center = Center.find(params[:id])
  end

  def create
      @center = Center.new(params[:center])
      render :action => :new unless @center.save
  end

  def update
      @center = Center.find(params[:id])
      render :action => :edit unless @center.update_attributes(params[:center])
  end

  def destroy
      @center = Center.find(params[:id])
      @center.destroy
  end
  
end
