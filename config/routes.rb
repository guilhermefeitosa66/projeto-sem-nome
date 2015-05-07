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

 #routs for module_languages 
 get'/languages' => 'languages#index', as: 'languages'
 get '/language/new' => 'languages#new', as: 'new_language'
 post'/language/create' => 'languages#create', as: 'create_language'
 get'/language/edit/:id' => 'languages#edit', as: 'edit_language'
 get'/language/destroy/:id' => 'languages#destroy', as: 'destroy_language'
 get'/language/show/:id' => 'languages#show', as: 'show_language'
 post'/language/update/:id' => 'languages#update', as: 'update_language'

end
