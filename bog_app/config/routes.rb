BogApp::Application.routes.draw do
  root to: "bogs#index"

  get "/bogs/", to: "bogs#index"
  get "/bogs/new", to: "bogs#new"
  get "/bogs/show_all", to: "bogs#show_all"
  get "/bogs/:id", to: "bogs#show"
  post "/bogs", to: "bogs#create"
  get "/bogs/:id/edit", to: "bogs#edit"
  put "/bogs/:id", to: "bogs#update"
  get "/bogs/:id/delete", to: "bogs#delete"
end
