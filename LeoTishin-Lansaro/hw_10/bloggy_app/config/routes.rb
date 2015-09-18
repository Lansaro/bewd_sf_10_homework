Rails.application.routes.draw do

  resources :blogs do
    resources :comments

  root 'static_pages#home'

end
