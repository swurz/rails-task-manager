Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/tasks', to: 'tasks#index' # GET all
  # post '/tasks', to: 'tasks#create' # CREATE step two post
  # get '/tasks/new', to: 'tasks#new', as: :new_task # CREATE step one get
  # get '/tasks/:id', to: 'tasks#show', as: :task # GET one
  # get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task # UPDATE step one get
  # patch '/tasks/:id', to: 'tasks#update' # UPDATE step two patch
  # delete '/tasks/:id', to: 'tasks#destroy' # DELETE

  resources :tasks
end
