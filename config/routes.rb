Rails.application.routes.draw do
  root 'home#main'
  get 'home/main'
  get 'home/add_product'
  get 'home/create'
  post 'home/create', to: 'home#new'
  resources :products
  get 'home/test'
  get 'home/fetchusers' , to:"home#fetchusers"
  get 'home/index'
  get 'authentication/signin'
  get 'authentication/signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmlend
end