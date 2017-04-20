Rails.application.routes.draw do
  get 'reviews/show'

  get 'reviews/create'

  get 'reviews/destroy'

  resources :sessions, only: [:new, :create, :destroy] #for login functionality
  resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end
   #used to replace individual entries for index, create, new, edit, show, update, destroy. Called 7 RESTful methods
   #nested route follows, captures the associative relationship between products and reviews.
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
