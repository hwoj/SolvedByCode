Rails.application.routes.draw do

  root 'pages#home'
  get '/companies/signup', to: 'companies#new'
  resources :companies, except: [:new]
  resources :jobs
  get '/applicants/signup', to: 'applicants#new'
  resources :applicants, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


end
