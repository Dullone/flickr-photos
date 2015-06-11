Rails.application.routes.draw do
  root to: 'static_pages#index'
  #get '/home/:id', to: 'static_pages#index'
end
