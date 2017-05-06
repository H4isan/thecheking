Rails.application.routes.draw do
  resources :clients do
    resources :money
  end
  get '/money/find', to: 'money#find', as: 'find_money'
  get '/money/find/client', to: 'money#findClient'
  get '/money/find/:num_money',to:'money#findMoney'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'index#index'
end
