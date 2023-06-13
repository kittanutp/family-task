Rails.application.routes.draw do
  resources(:family_members, only: [:index, :new, :create, :update])
  resources(:tasks, only: [:index, :new, :create, :update])
  get "/tasks/set-status/:id", to: 'tasks#set_status', as: 'tasks_set_status'
  get "/tasks/delete-all", to: 'tasks#delete_all', as: 'tasks_delete_all'
  root 'family_members#index'
end
