Rails.application.routes.draw do
  devise_for :usuarios, controllers: { confirmations: 'confirmations' }

  get 'pages/index'

  get 'pages/info'

  root 'pages#index'

  resources :dividas
  resources :clientes
  resources :empresas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
