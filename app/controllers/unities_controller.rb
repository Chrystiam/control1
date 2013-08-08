class UnitiesController < ApplicationController

    def index
        @unities = Unity.page(params[:page]).per_page(3)
        respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @unities }
        end
    end

    def show
        @unity = Unity.find(params[:id])
    end

    def new
        @unity = Unity.new
    end

    def edit
        @unity = Unity.find(params[:id])
    end

    def create
        @unity = Unity.new(params[:unity])
        render :action => :new unless @unity.save
    end

    def update
        @unity = Unity.find(params[:id])
        render :action => :edit unless @unity.update_attributes(params[:unity])
    end

    def destroy
        @unity = Unity.find(params[:id])
        @unity.destroy
    end

end
