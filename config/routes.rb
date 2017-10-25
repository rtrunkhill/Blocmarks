Rails.application.routes.draw do

  get 'users/show'

  get 'likes/index'

  # get 'incoming/create'
  post :incoming, to: 'incoming#create'

  resources :topics do
    resources :bookmarks
  end
  
 resources :bookmarks, except: [:index] do
   resources :likes, only: [:index, :create, :destroy]
  end

  devise_for :users, controllers: { :sessionsm => 'users/sessions' }
  
  resources :users, only: [:show]
  
  get 'users/signout', to: 'devise/sessions#destroy'
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index' 
end
