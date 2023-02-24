Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'

  resources :lists, only: [:show, :new, :create, :destroy] do
    resources :bookmarks, only: [:show, :new, :create] do
      resources :movies, only: [:index]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookmarks, only: [:destroy]
end
