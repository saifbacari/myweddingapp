Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :customers, except: :index do
   resources :customer_lists, only: [:index, :new, :create, :show,:edit, :update]
   member do
    get :service_providers_index
  end
 end
  resources :islands, only: [:index, :show]
  resources :service_providers, only: [:new, :create, :show, :edit, :update]
  resources :specialties, only: [:new, :create, :index]
   root to: "welcome#index"
end
