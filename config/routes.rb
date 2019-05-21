Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # READ

  get 'tasks', to: 'tasks#index'
  # get 'tasks/:id', to: 'tasks#show', as: 'show_task'

  # CREATE

  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # UPDATE

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE

  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task'
end
