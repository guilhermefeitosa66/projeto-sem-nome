ProjetoSemNome::Application.routes.draw do
  # get '/users' => 'users#index'

 #routs for module_languages
 
 get'/languages' => 'languages#index', as: 'languages'
 get '/language/new' => 'languages#new', as: 'new_language'
 post'/language/create' => 'languages#create', as: 'create_language'
 get'/language/edit/:id' => 'languages#edit', as: 'edit_language'
 get'/language/destroy/:id' => 'languages#destroy', as: 'destroy_language'
 get'/language/show/:id' => 'languages#show', as: 'show_language'
 post'/language/update/:id' => 'languages#update', as: 'update_language'

end
