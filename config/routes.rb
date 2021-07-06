Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to: "session_users#new"
  post "/login", to: "session_users#create"
  delete "/login", to: "session_users#destroy"

  resources :users
end
