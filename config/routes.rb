Brogramming::Application.routes.draw do
  get "authentications/create"

  match '/auth/:provider/callback' => 'authentications#create'  
end
