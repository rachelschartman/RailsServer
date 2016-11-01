Rails.application.routes.draw do
  get 'welcom/index'
  root 'welcom#index'

  resources :devices

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
