Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  post '/app/github/callback', to: 'sessions#create'

  get '/app/github/callback', to: 'sessions#create'
end
