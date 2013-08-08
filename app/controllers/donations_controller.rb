class DonationsController < ApplicationController

  def index
    @donations = Donation.page(params[:page]).per_page(3)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @donations }
    end
  end

  def show
      @donation = Donation.find(params[:id])
  end

  def new
      @donation = Donation.new
  end

  def edit
      @donation = Donation.find(params[:id])
  end

  def create
      @donation = Donation.new(params[:donation])
      render :action => :new unless @donation.save
  end

  def update
      @donation = Donation.find(params[:id])
      render :action => :edit unless @donation.update_attributes(params[:donation])
  end

  def destroy
      @donation = Donation.find(params[:id])
      @donation.destroy
  end
  
end
