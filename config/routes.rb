Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root :to => 'categories#index', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'splashes#index', as: :unauthenticated_root
    end
  end
  
  resources :users
  resources :categories do
    resources :purchases
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
