ProjetoSemNome::Application.routes.draw do
  root to: 'welcome#index'

  #routes for the ability module
  get '/abilities' => 'abilities#index', as: 'abilities'
  get '/abilities/new' => 'abilities#new', as: 'new_ability'
  get '/abilities/edit/:id' => 'abilities#edit', as: 'edit_ability'
  get '/abilities/show/:id' => 'abilities#show', as: 'show_ability'
  post '/abilities/create' => 'abilities#create', as: 'create_ability'
  post '/abilities/update/:id' => 'abilities#update', as: 'update_ability'
  get '/abilities/destroy/:id' => 'abilities#destroy', as: 'destroy_ability'

  #routes for the function module
  get '/functions' => 'functions#index', as: 'functions'
  get '/functions/new' => 'functions#new', as: 'new_function'
  get '/functions/edit/:id' => 'functions#edit', as: 'edit_function'
  get '/functions/show/:id' => 'functions#show', as: 'show_function'
  post '/functions/create' => 'functions#create', as: 'create_function'
  post '/functions/update/:id' => 'functions#update', as: 'update_function'
  get '/functions/destroy/:id' => 'functions#destroy', as: 'destroy_function'

 #routes for module_languages
 get'/languages' => 'languages#index', as: 'languages'
 get '/language/new' => 'languages#new', as: 'new_language'
 post '/language/create' => 'languages#create', as: 'create_language'
 get '/language/edit/:id' => 'languages#edit', as: 'edit_language'
 get '/language/destroy/:id' => 'languages#destroy', as: 'destroy_language'
 get '/language/show/:id' => 'languages#show', as: 'show_language'
 post '/language/update/:id' => 'languages#update', as: 'update_language'

 get '/projects' => 'projects#index', as:'projects'
 get '/project/new' => 'projects#new', as: 'new_project'
 post '/project/create' => 'projects#create', as: 'create_project'
 get '/project/edit/:id' => 'projects#edit', as: 'edit_project'
 get '/project/destroy/:id' => 'projects#destroy', as:'destroy_project'
 get '/project/show/:id' => 'projects#show', as: 'show_project'
 post '/project/update/:id' => 'projects#update', as: 'update_project'

 #routes for module_local
 get'/places' => 'places#index', as: 'places'
 get '/places/new' => 'places#new', as: 'new_local'
 post'/places/create' => 'places#create', as: 'create_local'
 get'/places/edit/:id' => 'places#edit', as: 'edit_local'
 get'/places/destroy/:id' => 'places#destroy', as: 'destroy_local'
 get'/places/show/:id' => 'places#show', as: 'show_local'
 post'/places/update/:id' => 'places#update', as: 'update_local'

 #errors routes
 get '/notfound' => 'errors#404', as: 'notfound'

 #sessions routes
 post '/sessions/start' => 'sessions#start_session', as: 'start_session'
 get '/sessions/end' => 'sessions#end_session', as: 'end_session'

 #dashboard routes
 get '/dashboard' => 'dashboard#index', as: 'dashboard'

 #users routes
 get '/users' => 'users#index', as: 'users'
 get '/user/new' => 'users#new', as: 'new_user'
 get '/user/edit/:id' => 'users#edit', as: 'edit_user'
 get '/user/show/:id' => 'users#show', as: 'show_user'
 post '/user/create' => 'users#create', as: 'create_user'
 post '/user/update/:id' => 'users#update', as: 'update_user'
 get '/user/destroy/:id' => 'users#destroy', as: 'destroy_user'
 get '/user/profile/edit' => 'users#edit_profile', as: 'edit_profile_user'
 post '/user/profile/update' => 'users#update_profile', as: 'update_profile_user'
 get '/user/password/change' => 'users#change_password', as: 'change_password_user'
 post '/user/password/update' => 'users#update_password', as: 'update_password_user'

end