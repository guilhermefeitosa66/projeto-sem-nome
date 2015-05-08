ProjetoSemNome::Application.routes.draw do
  # get '/users' => 'users#index'

 #routs for module_languages
 get '/languages' => 'languages#index', as: 'languages'
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




end
