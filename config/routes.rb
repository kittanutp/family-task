Rails.application.routes.draw do
  resources(:family_members, only: [:index, :new, :create, :update])
  resources(:tasks, only: [:index, :new, :create, :update])
  get "/tasks/set-status/:id", to: 'tasks#set_status', as: 'tasks_set_status'
end
