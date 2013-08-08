class GarmentsController < ApplicationController 

  def index
      @garments = Garment.search(params[:name]).page(params[:page]).per_page(3).order('name')
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @garments }
      end
  end

  def show
      @garment = Garment.find(params[:id])
  end

  def new
      @garment = Garment.new
  end

  def edit
      @garment = Garment.find(params[:id])
  end

  def create
      @garment = Garment.new(params[:garment])
      render :action => :new unless @garment.save
  end

  def update
      @garment = Garment.find(params[:id])
      render :action => :edit unless @garment.update_attributes(params[:garment])
  end

  def destroy
      @garment = Garment.find(params[:id])
      @garment.destroy
  end
  
end
