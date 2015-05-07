ProjetoSemNome::Application.routes.draw do
  # get '/users' => 'users#index'

  #routes for the ability module
  get '/abilities' => 'abilities#index', as: 'abilities'
  get '/abilities/new' => 'abilities#new', as: 'new_ability'
  get '/abilities/edit/:id' => 'abilities#edit', as: 'edit_ability'
  get '/abilities/show/:id' => 'abilities#show', as: 'show_ability'
  post '/abilities/create' => 'abilities#create', as: 'create_ability'
  post '/abilities/update/:id' => 'abilities#update', as: 'update_ability'
  get '/abilities/destroy/:id' => 'abilities#destroy', as: 'destroy_ability'

  #routes for the funciotn module
  get '/functions' => 'functions#index', as: 'functions'
  get '/functions/new' => 'functions#new', as: 'new_function'
  get '/functions/edit/:id' => 'functions#edit', as: 'edit_function'
  get '/functions/show/:id' => 'functions#show', as: 'show_function'
  post '/functions/create' => 'functions#create', as: 'create_function'
  post '/functions/update/:id' => 'functions#update', as: 'update_function'
  get '/functions/destroy/:id' => 'functions#destroy', as: 'destroy_function'

 #routs for module_languages 
 get'/languages' => 'languages#index', as: 'languages'
 get '/language/new' => 'languages#new', as: 'new_language'
 post'/language/create' => 'languages#create', as: 'create_language'
 get'/language/edit/:id' => 'languages#edit', as: 'edit_language'
 get'/language/destroy/:id' => 'languages#destroy', as: 'destroy_language'
 get'/language/show/:id' => 'languages#show', as: 'show_language'
 post'/language/update/:id' => 'languages#update', as: 'update_language'

end
