Set5::Application.routes.draw do
  
 
  match 'pics/allUsers' => 'users#index'
  match 'pics/user/:id' => 'Users#show'
  
  resources :comments

  resources :photos

  resources :users

  
end
