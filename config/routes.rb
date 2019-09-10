Rails.application.routes.draw do
  get 'todos',to:'todos#index',as:'todos'
  get 'todos/new'
  post 'todos', to:'todos#create'
  get 'todos/list',to:'todos#list',as:'list'
  get 'todos/:id',to:'todos#show' ,as:'todo'
  get 'todos/:id/edit',to:'todos#edit',as:'edit'
  patch 'todos/:id',to:'todos#update'
  delete 'todos/:id',to:'todos#destroy'
  get 'todos/:id/completed', to:'todos#completed',as:'completed'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
