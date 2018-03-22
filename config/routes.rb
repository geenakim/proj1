Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers


  patch "capture", to: "pokemons#capture", as: "capture"
  patch "damage", to: "pokemons#damage", as: "damage"
  patch "heal", to: "pokemons#heal", as: "heal"

  get "new", to: "pokemons#new"
  post "create", to: "pokemons#create"
  
end
