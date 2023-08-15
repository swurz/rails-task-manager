Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/tasks', to: 'tasks#index' # GET all
  get '/tasks/new', to: 'tasks#new' # CREATE step one get
  post '/tasks', to: 'tasks#create' # CREATE step two post
  get '/tasks/:id', to: 'tasks#show' # GET one
  get '/tasks/:id/edit', to: 'tasks#edit' # UPDATE step one get
  patch '/tasks/:id', to: 'tasks#update' # UPDATE step two patch
  delete '/tasks/:id', to: 'tasks#destroy' # DELETE
end
