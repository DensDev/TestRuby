Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'todo#index', as: 'todo_index'
  get '/tambah', to: 'todo#tambah', as: 'todo_tambah'
  post '/tambah/kirim', to: 'todo#kirim', as: 'todo_kirim'
  get '/:id/edit', to: 'todo#edit', as: 'todo_edit'
  patch '/:id/edit/update', to: 'todo#update', as: 'todo_update'
  get '/:id/delete', to: 'todo#destroy', as: 'todo_destroy'

end
