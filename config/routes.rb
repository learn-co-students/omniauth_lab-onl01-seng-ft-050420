Rails.application.routes.draw do

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  # get '/auth/github/callback' => 'sessions#create'
  # post '/auth/github/callback' => 'sessions#create'

  root 'welcome#home'
end
