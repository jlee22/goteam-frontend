Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#index"
    resources :users, only:[:create, :show] do
      resources :stats, only:[:create,:update,:show]
    end
    resources :sessions, only:[:create]
    resources :sports, only:[:index,:create]

    post "/sports/type", to: "sports#get_type"
end
