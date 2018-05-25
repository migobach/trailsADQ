Rails.application.routes.draw do
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/kodiak', to: 'static_pages#kodiak'

 resources :trails
end
