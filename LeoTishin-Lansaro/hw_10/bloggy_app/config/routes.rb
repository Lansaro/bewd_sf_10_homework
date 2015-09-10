Rails.application.routes.draw do

  resources :blogs

  root 'static_pages#home'

end
