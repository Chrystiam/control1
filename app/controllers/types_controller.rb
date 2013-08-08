class TypesController < ApplicationController

  def index
      @types = Type.page(params[:page]).per_page(3)
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @types }
      end
  end

  def show
      @type = Type.find(params[:id])
  end

  def new
      @type = Type.new
  end

  def edit
      @type = Type.find(params[:id])
  end

  def create
      @type = Type.new(params[:type])
      render :action => :new unless @type.save
  end

  def update
      @type = Type.find(params[:id])
      render :action => :edit unless @type.update_attributes(params[:type])
  end

  def destroy
      @type = Type.find(params[:id])
      @type.destroy
  end

end
