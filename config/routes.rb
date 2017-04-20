Rails.application.routes.draw do
  get 'tasks/create'

  get 'tasks/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new',to: 'tasks#new'

  get 'users/create'

  get 'toppages/index'
  
  get 'tasks/update'

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
      resources :tasks
      #ここまで追加
      #resources :tasks
      get 'tasks', to: 'taskss#index'
      get 'tasks/:id/edit', to: 'tasks#edit'
end
