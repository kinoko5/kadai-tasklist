Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    Rails.application.routes.draw do
      root to: 'tasks#index'  
      #追加
      get 'login', to: 'sessions#new'
      post 'login', to: 'sessions#create'
      delete 'logout', to: 'sessions#destroy'

      get 'signup', to: 'users#new'
      resources :users, only: [:index, :show, :new, :create]
      #ここまで追加
      resources :tasks
    end
end
