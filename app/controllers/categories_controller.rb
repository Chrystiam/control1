class CategoriesController < ApplicationController

   def index
     @categories = Category.page(params[:page]).per_page(3).order('id DESC')
     respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @categories } 
     end
   end

    def show
        @category = Category.find(params[:id])
    end

    def new
        @category = Category.new
    end

    def edit
        @category = Category.find(params[:id])
    end

    def create
        @category = Category.new(params[:category])
        render :action => :new unless @category.save
    end

    def update
        @category = Category.find(params[:id])
        render :action => :edit unless @category.update_attributes(params[:category])
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
    end

end
