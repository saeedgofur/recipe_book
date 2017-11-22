Rails.application.routes.draw do
  
 
  root 'recipes#index'


  

  resources :users, controller: "users" 
  resources :sessions, controller: "sessions"
 
  get "/sign_up" => "users#new", as: "sign_up"
  get "/users/show" => "users#show", as: "profile"

  post "/sessions/new" => "sessions#create"
  get "/sign_in" => "sessions#new", as: "sign_in"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"

  get "/recipes/gimmick" => "recipes#gimmick", as: "gimmick"
  get "/recipes/index" => "recipes#index", as: "recipes_index"
  get "/recipes/new" => "recipes#new", as: "create_recipe"
  post "/recipes/new" => "recipes#create" 
  post "/recipes/search" => "recipes#search", as: "search_recipes"
  get "/recipes/random" => "recipes#random", as: "random_recipe"
  get "/recipes/:id" => "recipes#show", as: "recipe_show"

  resources :recipes, controller: "recipes" 


  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
end
