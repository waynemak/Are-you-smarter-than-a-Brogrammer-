Brogramming::Application.routes.draw do
  
  resources :questions, :only => :show do
    resources :answers, :only => :create
  end
  
  get "authentications/create"

  match '/auth/:provider/callback' => 'authentications#create'  

  root :to => 'home_page#index'

end
