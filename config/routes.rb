Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#home'
  # List all the tasks
  get "tasks", to: "tasks#index"

  # create a new task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  get "tasks/:id", to: "tasks#show", as: "task"

  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy", as: "destroy_task"

end
