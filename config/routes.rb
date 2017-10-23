Rails.application.routes.draw do

  get 'likes/index'

  # get 'incoming/create'
  post :incoming, to: 'incoming#create'

  resources :topics do
    resources :bookmarks, except: [:index] do
     resources :likes, only: [:index, :create, :destroy]
    end
  end

  devise_for :users, controllers: { :sessionsm => 'users/sessions' }
  get 'users/signout', to: 'devise/sessions#destroy'
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index' 
end
