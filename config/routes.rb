Rails.application.routes.draw do
  get 'task/task:string'
  get 'task/status:enum'
  get 'task/member_id:integet:index'
  resources :family_members
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
