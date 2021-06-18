Rails.application.routes.draw do
post "/recipes", to: "recipes#create"
get '/recipes', to: "recipes#index"

post '/signup', to: "users#create"
get '/me', to: 'user#show'

post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
end
