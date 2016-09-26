Rails.application.routes.draw do
  resources :hospitalities
  resources :meetings
  resources :organisations
  resources :people
  resources :roles
  get 'main/index'
  root to: 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :roles
      jsonapi_resources :people
      jsonapi_resources :organisations
      jsonapi_resources :meetings
    end
  end
end
