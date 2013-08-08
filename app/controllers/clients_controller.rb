class ClientsController < ApplicationController

  autocomplete :city, :name, :full => true 

  def index
      @clients = Client.search(params[:name], 
                 params[:identificacion]).page(params[:page]).per_page(3).order('id DESC')
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @clients }
      end
  end

  def show
      @client = Client.find(params[:id])
  end

  def new
      @client = Client.new
  end

  def edit
      @client = Client.find(params[:id])
  end

  def create
      @client = Client.new(params[:client])
      render :action => :new unless @client.save
  end

  def update
      @client = Client.find(params[:id])
      render :action => :edit unless @client.update_attributes(params[:client])
  end

  def destroy
      @client = Client.find(params[:id])
      @client.destroy
  end
end