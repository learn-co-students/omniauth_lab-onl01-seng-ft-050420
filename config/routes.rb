Rails.application.routes.draw do
  # Add your routes here, 

  match '/auth/:provider/callback', to: 'sessions#create', via: %i[get post]

  root 'welcome#home'
  
end
