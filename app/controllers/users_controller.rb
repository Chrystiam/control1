class UsersController < ApplicationController

    before_filter :require_login, :except  => [ :index, :show, :new, :create, :activate, :autocomplete_center_name ]
    autocomplete :center, :name, :full => true

    def index
        @users = User.search(params[:search], params[:page]).per_page(1)
    end

    def new
        @user = User.new
    end

    def create
		      @user = User.new(params[:user])
        render :action => :new unless @user.save
    end
    
    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
		      @user = User.find(params[:id])
		      render :action => :edit unless @user.update_attributes(params[:user])
    end
    
    def activate
        if @user = User.load_from_activation_token(params[:id])
          @user.activate!
          redirect_to(login_path, :notice => 'Usuario Activado.')
        else
          not_authenticated
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

end
