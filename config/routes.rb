Control::Application.routes.draw do

  resources :purchases do
    resources :purchase_descriptions
  end


  resources :suppliers


  get "ingresolo" => "sessions#ingresolo", :as => "ingresolo"

  get "ayuda" => "ayuda#index", :as => "ayuda"
  get "video1" => "ayuda#video1", :as => "video1"

  resources :receipt_headers do
      get :autocomplete_city_name, :on => :collection
      resources :receipt_descriptions
  end 
  
  get 'receipt_descriptions/calc', to: 'receipt_descriptions#calc' 

  

  resources :conditions


  resources :states


  resources :production_orders do
    resources :procedures do 
  end

    resources :preproduction_costs
  end

  get "statistics" => "statistics#index", :as => "statistics"
  
  resources :statistics do
    collection do
      get :prints
    end
    collection do
      get :assemblies
    end
    collection do
      get :outlines
    end
    collection do
      get :embroideries
    end
    collection do
      get :cuts
    end
    collection do
      get :labels
    end
  end


  resources :donations


  resources :inputs
  resources :categories
  resources :unities
  
  resources :garments do
     resources :consume_garments 
  end
  
  get 'consume_garments/cal_cost', to: 'consume_garments#cal_cost'

  
  resources :types

  resources :clients do
      get :autocomplete_city_name, :on => :collection
  end  

  resources :docs

  resources :cities

  resources :regions

  resources :countries

  get "activate" => 'activations#create'

  root :to => "pages#home"

  
  get  "inventory" => "pages#inventory", :as => "inventory"
  get  "admin2" => "pages#admin2", :as => "admin2"
  get  "admin" => "pages#admin", :as => "admin"
  get  "admin3" => "pages#admin3", :as => "admin3"
  get "about" => "pages#about", :as => "about"

  resources :users do
      member do
        get :activate
      end
      get :autocomplete_center_name, :on => :collection
  end

  get "logout" => "sessions#destroy", :as => "logout"
  get "login"  => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :sessions, :only => [:new, :create, :destroy]

  resource :password_resets, :controller => "password_resets" #, :only => [:new, :edit]
  
  resources :centers
  resources :regionals
  resources :occupations

  resources :productions do
    collection do
         get :bars
    end
  end
  
end
