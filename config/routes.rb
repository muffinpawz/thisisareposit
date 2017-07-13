Rails.application.routes.draw do

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolios/:id/edit', to: 'portfolios#edit'
  get "portfolios/ylia", to: 'portfolios#ylia'
  get "portfolios/fmab", to: 'portfolios#fmab'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toggle_status
  end
end
  
  root to: 'portfolios#index'
  
end





