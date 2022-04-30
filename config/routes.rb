Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :inventories
  resources :shipments
  resources :personnels
  root 'pages#index'
  resources :soldiers
  resources :officers
  resources :armrequests
  resources :arms
  resources :pages  
  get '/approvals' => 'armrequests#approvals'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
