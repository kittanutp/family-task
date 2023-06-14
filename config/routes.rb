Rails.application.routes.draw do
  resources(:family_members, only: [:index, :new, :show, :create, :update])
  resources(:tasks, only: [:index, :new, :create, :update])
  get "/tasks/set-status/:id", to: 'tasks#set_status', as: 'tasks_set_status'
  get "/tasks/delete-all", to: 'tasks#delete_all', as: 'tasks_delete_all'
  get "api/family_members", to: 'family_members#tasks_for_all_family_members'
  get "api/tasks/daily-sync", to: 'tasks#set_tasks_to_delay'
  root 'family_members#index'
end
