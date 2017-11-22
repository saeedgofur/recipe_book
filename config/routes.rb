Rails.application.routes.draw do
  
 
  root 'recipes#index'


  

  resources :users, controller: "users" 
  resources :sessions, controller: "sessions"
  resources :recipes, controller: "recipes" 

  get "/sign_up" => "users#new", as: "sign_up"
  get "/users/show" => "users#show", as: "profile"

  post "/sessions/new" => "sessions#create"
  get "/sign_in" => "sessions#new", as: "sign_in"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"

  get "/recipes" => "recipes#index", as: "recipes_index"
  get "/recipes/new" => "recipes#new", as: "create_recipe"
  post "/recipes/new" => "recipes#create"
  get "/recipes/:id" => "recipes#show", as: "recipe_show"
  post "/recipes/search" => "recipes#search", as: "search_recipes"

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
end
