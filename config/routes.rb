Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'lists#index'

  # lists routes
  # www.website.com/lists
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new', as: 'new_list'
  post 'lists/new', to: 'lists#create'
  get 'lists/:list_id', to: 'lists#show'
  post 'lists/:list_id', to: 'tasks#create'
  delete 'tasks/:task_id', to: 'tasks#delete', as: 'delete_task'
  get 'tasks/:task_id', to: 'tasks#toggle'
end
