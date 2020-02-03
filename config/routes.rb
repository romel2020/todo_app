Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'todos/index', to: 'todos#index'
  get 'todos/new', as: 'new_todo'
  get 'todos/:id/show', to: 'todos#show', as: 'show_todo'
  post 'todos', to: 'todos#create'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  patch 'todos/:id', to: 'todos#update', as: 'todo'
  delete 'todos/:id', to: 'todos#destroy', as: 'delete_todo'
  get 'todos/:id/complete', to: 'todos#complete', as: 'complete_todo'
  get 'todos/list', to: 'todos#list', as: 'list_todo'

  root 'todos#index'
end

  
