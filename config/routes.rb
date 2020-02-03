Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'todos/index', to: 'todos#index'
  get 'todos/new', to: 'todos#new', as: 'new_todos'
  post 'todos', to: 'todos#create'
  get 'todos/:id', to: 'todos#show'

  root 'todos#index'
end
