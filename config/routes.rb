Brogramming::Application.routes.draw do
  
  resources :questions, :only => :show
  # The priority is based upon order of creation:
  # first created -> highest priority.
  get "authentications/create"

  match '/auth/:provider/callback' => 'authentications#create'  

  root :to => 'home_page#index'

end
