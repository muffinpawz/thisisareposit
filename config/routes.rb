Rails.application.routes.draw do

devise_for :users, path: '', path_names: { sign_in: 'login',
  sign_out: 'logout', sign_up: 'register', edit: 'edit' }

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolios/:id/edit', to: 'portfolios#edit'
  get "portfolios/ylia", to: 'portfolios#ylia'
  get "portfolios/fmab", to: 'portfolios#fmab'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'contact/problems', to: 'pages#problems'
  get 'contact/questions', to: 'pages#questions'
  get 'contact/mental', to: 'pages#mental'
  resources :blogs do
    member do
      get :toggle_status
  end
end
  
  root to: 'portfolios#index'
  
end





