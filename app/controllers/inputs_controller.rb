class InputsController < ApplicationController

    before_filter :find_input, :except => [ :index, :create, :new ] 

    def index
        @categories = Category.order("id").all
        @inputs = Input.search(params[:name], params[:categoria]).page(params[:page]).per_page(3).order('name')
        puts params[:categoria]
        respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @inputs }
        end
    end

    def show

    end

    def new
        @input = Input.new
    end

    def edit

    end

    def create
        @input = Input.new(params[:input])
        render :action => :new unless @input.save
    end

    def update
        render :action => :edit unless @input.update_attributes(params[:input])
    end

    def destroy
        @input.destroy
    end
    
    private
    def find_input
        @input = Input.find(params[:id])
    end

end
