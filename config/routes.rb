Rails.application.routes.draw do
  resources :products #used to replace individual entries for index, create, new, edit, show, update, destroy. Called 7 RESTful methods

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
