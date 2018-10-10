Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get '/signup' => 'users#new'
  post '/signup',  to: 'users#create'

  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root 'welcome#index'
end
