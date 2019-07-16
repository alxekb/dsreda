Rails.application.routes.draw do
  resources :users

  namespace :api, defaults: { format: 'json' } do
    get 'users', to: 'users#users'
    get 'user', to: 'users#user_index'
    get 'records', to: 'users#user_records'
    post 'add_points', to: 'users#add_points'
    post 'remove_points', to: 'users#remove_points'
  end

  root to: 'users#index'
end
