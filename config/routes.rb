Set5::Application.routes.draw do
  
  match 'pics/allUsers' => 'users#index'
  
  resources :comments

  resources :photos

  resources :users

  
end
