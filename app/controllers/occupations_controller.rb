class OccupationsController < ApplicationController

  def index
      @occupations = Occupation.page(params[:page]).per_page(3)
  end

  def show
      @occupation = Occupation.find(params[:id])
      render :layout => false #we use lazybox.
  end

  def new
      @occupation = Occupation.new
  end

  def edit
      @occupation = Occupation.find(params[:id])
  end

  def create
      @occupation = Occupation.new(params[:occupation])
      render :action => :new unless @occupation.save
  end

  def update
      @occupation = Occupation.find(params[:id])
      render :action => :edit unless @occupation.update_attributes(params[:occupation])
  end

  def destroy
      @occupation = Occupation.find(params[:id])
      @occupation.destroy
      respond_to do |format|
        format.html { redirect_to occupations_url }
        format.json { head :no_content }
      end
  end

end
