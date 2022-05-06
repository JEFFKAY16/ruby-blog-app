Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end

  # get 'users/index', to: 'users#index'
  # get 'users/show', to: 'users#show'

  # get 'users/show/posts/index' , to: 'posts#index'
  # get 'users/show/posts/show', to: 'posts#show'


  # get 'users/index'
  # get 'users/show'

  # get 'posts/index'
  # get 'posts/show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
