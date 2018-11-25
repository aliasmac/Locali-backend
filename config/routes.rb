Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  namespace :api do 
    namespace :v1 do 
      resources :users, :broadcasts, :messages   

      post 'login', to: 'users#login'
      get 'validate', to: 'users#validate'
      get 'userbroadcasts', to: 'users#get_broadcasts'
      get 'lastbroadcast', to: 'broadcasts#get_last_broadcast'

    end 
  end 

end
