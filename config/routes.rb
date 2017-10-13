Rails.application.routes.draw do
  devise_for :users
  resources :users
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index'
 
end
