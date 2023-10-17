Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root "home#index"

  get 'member/:id', to: 'members#show', as: 'member'
end
