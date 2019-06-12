Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # http verb "url" => "controller#action"
  get "/pages/home", to: "pages#home", as: "root"

  # generate a post route
  # add a prefix
  post "/pages/data" => "pages#data"


  # generate a route with a unique id
  post "/pages/data/:id" => "pages#data"

  # post "pages/data/jo" => "pages#data"
  # post "pages/data/Hayden" => "pages#data"
end
