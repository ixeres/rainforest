Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy] #for login functionality
  resources :products #used to replace individual entries for index, create, new, edit, show, update, destroy. Called 7 RESTful methods
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
