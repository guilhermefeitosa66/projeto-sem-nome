ProjetoSemNome::Application.routes.draw do
  # get '/users' => 'users#index'

  get '/functions' => 'functions#index', as: 'functions'
  get '/functions/new' => 'functions#index', as: 'new_function'
  get '/functions/edit/:id' => 'functions#edit', as: 'edit_function'
  get '/functions/show/:id' => 'functions#show', as: 'show_function'
  post '/functions/create' => 'functions#create', as: 'create_function'
  post '/functions/update/:id' => 'functions#update', as: 'update_function'
  get '/functions/destroy/:id' => 'functions#destroy', as: 'destroy_function'

end
