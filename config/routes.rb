Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get 'signup' => 'users#new'

  resources :users

  root 'welcome#index'
end
