Rails.application.routes.draw do

  resources :blogs do
  resources :comments

end

  root 'static_pages#home'

end
