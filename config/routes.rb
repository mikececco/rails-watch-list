Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:index, :show, :new, :create] do
      resources :movies, only: [:index]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookmarks, only: [:destroy]
end
