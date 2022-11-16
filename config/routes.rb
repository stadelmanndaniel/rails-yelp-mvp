Rails.application.routes.draw do
  get 'reviews/new'
  get 'restaurants/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :create, :new, :edit, :show, :update] do
    resources :reviews, only: [:index, :create, :new, :edit, :show, :update]
  end
end
