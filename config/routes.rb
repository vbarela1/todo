Rails.application.routes.draw do

  root 'todolists#index'
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'todos/:id', to: 'todolists#show', as: 'todo_show'
  get 'todo', to: 'todolists#new', as: 'todo_new'
  get 'edit_todos/:id', to: 'todolists#edit', as: 'edit_todos'  
  
  post 'todo/new', to: 'todolists#create', as: 'todolists'

  patch 'todo', to: 'todolists#update'

  delete 'todos', to: 'todolists#destroy'
end
