Rails.application.routes.draw do
  get 'kadai_tasks/create'

  get 'kadai_tasks/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'toppages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #Rails.application.routes.draw do
 
      #root to: 'tasks#index'  
      #追加
      root to: 'toppages#index'
      get 'login', to: 'sessions#new'
      post 'login', to: 'sessions#create'
      delete 'logout', to: 'sessions#destroy'

      get 'signup', to: 'users#new'
      resources :users, only: [:index, :show, :new, :create]
      resources :kadai_tasks, only: [:create, :destroy]
      #ここまで追加
      #resources :tasks
    
end
