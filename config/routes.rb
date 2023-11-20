Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root 'articles#index'
  post '/todos', to: 'todos#create'
  get '/todos', to: 'todos#index'
  delete '/todo/:id', to: 'todos#destroy'
end
