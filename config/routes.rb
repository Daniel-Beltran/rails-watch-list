Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "lists", to: "lists#index"
  get "lists/new", to: "lists#new"
  post "lists", to: "lists#create"
  get "lists/:id", to: "lists#show", as: :list
  get "movies", to: "movies#index"
  get "movies/:id", to: "movies#show"

  get "lists/:list_id/bookmarks/new", to: "bookmarks#new"
  post "lists/:list_id/bookmarks", to: "bookmarks#create", as: :list_bookmarks
  #A user can delete a bookmark from a list. How can we make a delete link again?
  delete "bookmarks/:id", to: "bookmarks#destroy"
end