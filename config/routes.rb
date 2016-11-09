Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#index"
  get 'matches/show', :to => 'matches#show'
  post 'matches/edit', :to => 'matches#update'
    resources :users, only:[:create, :show, :new] do
      resources :teams, only: [:create,:update]
      resources :matches, only: [:show, :index]
      resources :stats, only:[:create,:update,:show]
    end
    resources :sessions, only:[:create, :destroy]
    resources :sports, only:[:index,:show]

    get "/login", to: "sessions#new"
    post "/sports/type", to: "sports#get_type"
end
