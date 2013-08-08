class CountriesController < ApplicationController

  before_filter :find_id

  def index
   @countries = Country.page(params[:page]).per_page(3).order('id DESC')
     respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @countries }
     end
  end

  def show

  end

  def new
    @country = Country.new

  end

  def edit
    @country = Country.find(params[:id])
  end

  def create
    @country = Country.new(params[:country])
    render :action => :new unless @country.save

  end

  def update
    @country = Country.find(params[:id])
    render :action => :edit unless @country.update_attributes(params[:country])
    @country.save
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
  end

  private
  def find_id
    @country = Country.find(params[:id]) if params[:id]
  end 
end
