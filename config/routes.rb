Rails.application.routes.draw do

root 'welcome#index'

resources :parties
resources :menus
resources :orders
resources :users, only: [:new, :create]

get '/users/log_in' => "users#log_in", as: :log_in
get '/users/profile' => "users#profile", as: :profile

post '/sessions' => "sessions#create"
delete '/sessions' => "sessions#destroy"


end
