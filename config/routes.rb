Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # list all movies
  get "/movies", to: "movies#index", as: "movies"

  # create a new movie
  
  post "/movies", to: "movies#create"

  #add a new movie - show a form page

  get "/movies/new", to: "movies#new", as: "movies_new"

end
