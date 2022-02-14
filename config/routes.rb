Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/merchants/:id', to: 'merchants#show'
  resources :merchants, only: [:show]
  resources :item, only: [:show]
end
