Rails.application.routes.draw do

  get 'incoming/create'

  resources :topics do
    resources :bookmarks, except: [:index]
  end

  devise_for :users, controllers: { :sessionsm => 'users/sessions' }
  get 'users/signout', to: 'devise/sessions#destroy'
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index' 
end
