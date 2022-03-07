Rails.application.routes.draw do
  get "home/index"

  get "articles/new", to: "articles#new";
  get "articles/2", to: "articles#show";
  post "articles", to: "articles#create";
end
