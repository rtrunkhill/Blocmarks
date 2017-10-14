Rails.application.routes.draw do
  devise_for :users, controllers: { :sessionsm => 'users/sessions' }
  get 'users/signout', to: 'devise/sessions#destroy'
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index' 
end
