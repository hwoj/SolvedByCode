Rails.application.routes.draw do

  root 'pages#home'
  get '/companies/signup', to: 'companies#new'
  resources :companies, except: [:new]
  resources :jobs


end
