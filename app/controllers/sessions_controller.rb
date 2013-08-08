class SessionsController < ApplicationController

    skip_before_filter :require_login, :except => [:destroy]
    
    def new 
        @user = User.new 
    end  
    
    def create
        respond_to do |format|
          if @user = login(params[:email],params[:password],params[:remember])
             format.html { redirect_back_or_to root_url }
             format.xml { render :xml => @user, :status => :created, :location => @user }
          else
             format.html { redirect_to root_url }
             format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
          end
        end
    end
    
    def destroy  
        logout  
        redirect_to root_url  
    end  

end
