Rails.application.routes.draw do

  resources :topics do
    resources :bookmarks, except: [:index]
  end

  devise_for :users, controllers: { :sessionsm => 'users/sessions' }
  get 'users/signout', to: 'devise/sessions#destroy'
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index' 
end
