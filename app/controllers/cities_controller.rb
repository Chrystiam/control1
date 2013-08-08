class CitiesController < ApplicationController

  before_filter :find_id

  def index
   @cities = City.page(params[:page]).per_page(3).order('id DESC')
     respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @cities }
   end 
  end

  def show

  end

  def new
    @city = City.new

  end

  def edit

  end

  def create
    @city = City.new(params[:city])
    @city.name =  City.nombre(@city)
    render :action => :new unless @city.save
  end

  def update
    render :action => :edit unless @city.update_attributes(params[:city])
    @city.name =  City.nombre(@city)
    @city.save
  end

  def destroy
    @city.destroy
  end

  def find_id
    @city = City.find(params[:id]) if params[:id]
  end
  
end
