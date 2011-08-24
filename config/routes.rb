Brogramming::Application.routes.draw do
  
  match '/auth/:provider/callback' => 'authentications#create'  

  resources :questions, :only => :show do
    resources :answers, :only => :create
  end

  root :to => 'home_page#index'
  
  resource :result, :only => :show

end
