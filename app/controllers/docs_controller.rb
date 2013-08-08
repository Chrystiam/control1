class DocsController < ApplicationController

  before_filter :find_id

  def index
   @docs = Doc.page(params[:page]).per_page(3).order('id DESC')
     respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @docs }
   end 
  end

  def show

  end

  def new
    @doc = Doc.new

  end

  def edit

  end

  def create
    @doc =  Doc.new(params[:doc])
    render :action => :new unless @doc.save
  end

  def update
    render :action => :edit unless @doc.update_attributes(params[:doc])
    @doc.save
  end

  def destroy
    @doc.destroy
  end

  def find_id
    @doc = Doc.find(params[:id]) if params[:id]
  end
  
end
