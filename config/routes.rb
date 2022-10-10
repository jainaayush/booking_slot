Rails.application.routes.draw do
  resources :users
  namespace :api do
    namespace :v1 do
      get 'users/index'
      post 'users/create'
      post 'bookings/create'

      get 'users/:id', to: 'users#show'
      delete 'users/:id', to: 'users#destroy'
    end
  end

  root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
