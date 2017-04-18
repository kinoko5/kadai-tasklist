Rails.application.routes.draw do
  get 'microposts/create'

  get 'microposts/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'toppages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #Rails.application.routes.draw do
 
  get 'microposts/create'

  get 'microposts/destroy'

      #root to: 'tasks#index'  
      #追加
      root to: 'toppages#index'
      get 'login', to: 'sessions#new'
      post 'login', to: 'sessions#create'
      delete 'logout', to: 'sessions#destroy'

      get 'signup', to: 'users#new'
      resources :users, only: [:index, :show, :new, :create]
      resources :microposts, only: [:create, :destroy]
      #ここまで追加
      resources :tasks
    
end
