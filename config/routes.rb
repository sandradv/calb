Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  # lists routes
  # www.website.com/lists
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new', as: 'new_list'
  get 'lists/:list_id', to: 'lists#show'



end
