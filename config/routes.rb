Rails.application.routes.draw do
  root "posts#index"
  
  devise_for :users, only: %i[sessions passwords registrations]
  
  resources :posts, only: %i[ index show new create ]
  resources :users, only: %i[show], param: :username
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
